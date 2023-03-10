USE [master]
GO
/****** Object:  Database [ChampionShip]    Script Date: 25.01.2023 11:30:25 ******/
CREATE DATABASE [ChampionShip]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChampionShip', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ChampionShip.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChampionShip_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ChampionShip_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ChampionShip] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChampionShip].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChampionShip] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChampionShip] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChampionShip] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChampionShip] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChampionShip] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChampionShip] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChampionShip] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChampionShip] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChampionShip] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChampionShip] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChampionShip] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChampionShip] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChampionShip] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChampionShip] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChampionShip] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChampionShip] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChampionShip] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChampionShip] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChampionShip] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChampionShip] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChampionShip] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChampionShip] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChampionShip] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChampionShip] SET  MULTI_USER 
GO
ALTER DATABASE [ChampionShip] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChampionShip] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChampionShip] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChampionShip] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChampionShip] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChampionShip] SET QUERY_STORE = OFF
GO
USE [ChampionShip]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ChampionShip]
GO
/****** Object:  Table [dbo].[Championships]    Script Date: 25.01.2023 11:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Championships](
	[id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[date_start] [nvarchar](255) NOT NULL,
	[date_end] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[city] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Championships] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competition]    Script Date: 25.01.2023 11:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competition](
	[Competiotion_skill_ID] [int] IDENTITY(1,1) NOT NULL,
	[competition_id] [int] NOT NULL,
	[skill_id] [int] NOT NULL,
 CONSTRAINT [PK_Competition] PRIMARY KEY CLUSTERED 
(
	[Competiotion_skill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 25.01.2023 11:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[ID_region] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Capital] [nvarchar](255) NOT NULL,
	[local] [nvarchar](255) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[ID_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.01.2023 11:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 25.01.2023 11:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[skill_block_id] [float] NULL,
	[is_future] [bit] NULL,
	[description] [nvarchar](max) NULL,
	[PloshadPlace] [float] NULL,
	[PloshadOcenka] [float] NULL,
	[PloshadBreefZone] [float] NULL,
	[PloshadSklad] [float] NULL,
	[NumberOfMembers] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 25.01.2023 11:30:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[#] [int] NULL,
	[FIO] [nvarchar](255) NOT NULL,
	[gender] [char](255) NULL,
	[password] [nvarchar](255) NULL,
	[PIN] [float] NULL,
	[Date_Birth] [datetime] NULL,
	[ID role] [int] NULL,
	[skill] [int] NULL,
	[region] [int] NULL,
	[Place] [int] NULL,
	[ChampionShip] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Competition]  WITH CHECK ADD  CONSTRAINT [FK_Competition_Championships] FOREIGN KEY([competition_id])
REFERENCES [dbo].[Championships] ([id])
GO
ALTER TABLE [dbo].[Competition] CHECK CONSTRAINT [FK_Competition_Championships]
GO
USE [master]
GO
ALTER DATABASE [ChampionShip] SET  READ_WRITE 
GO
