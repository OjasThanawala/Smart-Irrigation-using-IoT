USE [master]
GO
/****** Object:  Database [smart_irrigation_393]    Script Date: 04/11/2018 20:07:10 ******/
CREATE DATABASE [smart_irrigation_393] ON  PRIMARY 
( NAME = N'smart_irrigation_393', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\smart_irrigation_393.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'smart_irrigation_393_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\smart_irrigation_393_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [smart_irrigation_393] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [smart_irrigation_393].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [smart_irrigation_393] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [smart_irrigation_393] SET ANSI_NULLS OFF
GO
ALTER DATABASE [smart_irrigation_393] SET ANSI_PADDING OFF
GO
ALTER DATABASE [smart_irrigation_393] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [smart_irrigation_393] SET ARITHABORT OFF
GO
ALTER DATABASE [smart_irrigation_393] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [smart_irrigation_393] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [smart_irrigation_393] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [smart_irrigation_393] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [smart_irrigation_393] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [smart_irrigation_393] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [smart_irrigation_393] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [smart_irrigation_393] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [smart_irrigation_393] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [smart_irrigation_393] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [smart_irrigation_393] SET  DISABLE_BROKER
GO
ALTER DATABASE [smart_irrigation_393] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [smart_irrigation_393] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [smart_irrigation_393] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [smart_irrigation_393] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [smart_irrigation_393] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [smart_irrigation_393] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [smart_irrigation_393] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [smart_irrigation_393] SET  READ_WRITE
GO
ALTER DATABASE [smart_irrigation_393] SET RECOVERY FULL
GO
ALTER DATABASE [smart_irrigation_393] SET  MULTI_USER
GO
ALTER DATABASE [smart_irrigation_393] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [smart_irrigation_393] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'smart_irrigation_393', N'ON'
GO
USE [smart_irrigation_393]
GO
/****** Object:  Table [dbo].[NotificationData]    Script Date: 04/11/2018 20:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ldr] [int] NULL,
	[mois] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NotificationData] ON
INSERT [dbo].[NotificationData] ([id], [ldr], [mois]) VALUES (1, 30, 23)
SET IDENTITY_INSERT [dbo].[NotificationData] OFF
/****** Object:  Table [dbo].[data]    Script Date: 04/11/2018 20:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[ldr] [int] NULL,
	[mois] [int] NULL,
	[date] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[data] ON
INSERT [dbo].[data] ([did], [ldr], [mois], [date]) VALUES (1, 32, 30, CAST(0x0000A8BF014AD632 AS DateTime))
SET IDENTITY_INSERT [dbo].[data] OFF
/****** Object:  Table [dbo].[admin_master]    Script Date: 04/11/2018 20:07:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_master](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin_master] ON
INSERT [dbo].[admin_master] ([aid], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[admin_master] OFF
