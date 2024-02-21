using System;
using System.Collections.Generic;
using System.IO;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration;

namespace CarManagementBO.Models
{
    public partial class CarManagementContext : DbContext
    {
        public CarManagementContext()
        {
        }

        public CarManagementContext(DbContextOptions<CarManagementContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Account> Accounts { get; set; } = null!;
        public virtual DbSet<AccountRole> AccountRoles { get; set; } = null!;
        public virtual DbSet<Brand> Brands { get; set; } = null!;
        public virtual DbSet<CarClass> CarClasses { get; set; } = null!;
        public virtual DbSet<CarInformation> CarInformations { get; set; } = null!;
        private string getString()
        {
            IConfiguration config = new ConfigurationBuilder()
                 .SetBasePath(Directory.GetCurrentDirectory())
                        .AddJsonFile("appsettings.json", true, true)
                        .Build();
            var strConn = config.GetConnectionString("DBDefault");
            if(strConn == null)
            {
                strConn = "Server=DESKTOP-7JGKTID;uid=sa;pwd=12345;database=CarManagement;TrustServerCertificate=True;";
            }
            return strConn;
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(getString());
            }
        }
        
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>(entity =>
            {
                entity.ToTable("Account");

                entity.Property(e => e.CurrentAddress).HasMaxLength(255);

                entity.Property(e => e.Email).HasMaxLength(100);

                entity.Property(e => e.Job).HasMaxLength(100);

                entity.Property(e => e.Password).HasMaxLength(100);

                entity.Property(e => e.Tel).HasMaxLength(20);

                entity.Property(e => e.UserName).HasMaxLength(50);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.Accounts)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Account_AccountRole");
            });

            modelBuilder.Entity<AccountRole>(entity =>
            {
                entity.ToTable("AccountRole");

                entity.Property(e => e.RoleName).HasMaxLength(50);
            });

            modelBuilder.Entity<Brand>(entity =>
            {
                entity.ToTable("Brand");

                entity.Property(e => e.BrandName).HasMaxLength(50);
            });

            modelBuilder.Entity<CarClass>(entity =>
            {
                entity.ToTable("CarClass");

                entity.Property(e => e.ClassType).HasMaxLength(10);
            });

            modelBuilder.Entity<CarInformation>(entity =>
            {
                entity.ToTable("CarInformation");

                entity.Property(e => e.CarColor).HasMaxLength(50);

                entity.Property(e => e.CarDescription).HasMaxLength(220);

                entity.Property(e => e.CarRentingPricePerDay).HasColumnType("money");

                entity.Property(e => e.PriceForHoliday).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.PriceForNormalDay).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.PriceForWeekend).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.PricePerHour).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.PricePerKm).HasColumnType("decimal(18, 0)");

                entity.HasOne(d => d.Brand)
                    .WithMany(p => p.CarInformations)
                    .HasForeignKey(d => d.BrandId)
                    .HasConstraintName("FK_CarInformation_Brand");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.CarInformations)
                    .HasForeignKey(d => d.ClassId)
                    .HasConstraintName("FK_CarInformation_CarClass");

                entity.HasOne(d => d.Owner)
                    .WithMany(p => p.CarInformations)
                    .HasForeignKey(d => d.OwnerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CarInformation_Account");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
