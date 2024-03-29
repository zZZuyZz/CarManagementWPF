USE [master]
GO

CREATE DATABASE [CarManagement]
GO

USE [CarManagement]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Tel] [nvarchar](20) NULL,
	[Job] [nvarchar](100) NULL,
	[CurrentAddress] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccountRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassType] [nvarchar](10) NULL,
 CONSTRAINT [PK_CarClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NULL,
	[ClassId] [int] NULL,
	[CarDescription] [nvarchar](220) NULL,
	[SeatNumber] [int] NULL,
	[YearCreate] [int] NULL,
	[CarColor] [nvarchar](50) NULL,
	[CarStatus] [int] NULL,
	[CarRentingPricePerDay] [money] NULL,
	[OwnerId] [int] NOT NULL,
	[PriceForNormalDay] [decimal](18, 0) NULL,
	[PriceForWeekend] [decimal](18, 0) NULL,
	[PriceForHoliday] [decimal](18, 0) NULL,
	[PricePerHour] [decimal](18, 0) NULL,
	[PricePerKm] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CarInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AccountRole] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountRole]
GO
ALTER TABLE [dbo].[CarInformation]  WITH CHECK ADD  CONSTRAINT [FK_CarInformation_Account] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[CarInformation] CHECK CONSTRAINT [FK_CarInformation_Account]
GO
ALTER TABLE [dbo].[CarInformation]  WITH CHECK ADD  CONSTRAINT [FK_CarInformation_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[CarInformation] CHECK CONSTRAINT [FK_CarInformation_Brand]
GO
ALTER TABLE [dbo].[CarInformation]  WITH CHECK ADD  CONSTRAINT [FK_CarInformation_CarClass] FOREIGN KEY([ClassId])
REFERENCES [dbo].[CarClass] ([Id])
GO
ALTER TABLE [dbo].[CarInformation] CHECK CONSTRAINT [FK_CarInformation_CarClass]
GO
USE [master]
GO
ALTER DATABASE [CarManagement] SET  READ_WRITE 
GO
