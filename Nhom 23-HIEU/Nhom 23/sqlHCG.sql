USE [master]
GO
/****** Object:  Database [TUVANMAYTINH]    Script Date: 11/17/2021 9:08:50 AM ******/
CREATE DATABASE [TUVANMAYTINH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TUVANMAYTINH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TUVANMAYTINH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TUVANMAYTINH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TUVANMAYTINH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TUVANMAYTINH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TUVANMAYTINH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TUVANMAYTINH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET ARITHABORT OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TUVANMAYTINH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TUVANMAYTINH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TUVANMAYTINH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TUVANMAYTINH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TUVANMAYTINH] SET  MULTI_USER 
GO
ALTER DATABASE [TUVANMAYTINH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TUVANMAYTINH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TUVANMAYTINH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TUVANMAYTINH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TUVANMAYTINH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TUVANMAYTINH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TUVANMAYTINH] SET QUERY_STORE = OFF
GO
USE [TUVANMAYTINH]
GO
/****** Object:  Table [dbo].[DuLieu]    Script Date: 11/17/2021 9:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuLieu](
	[Stt] [int] IDENTITY(1,1) NOT NULL,
	[Age] [nvarchar](20) NULL,
	[Sex] [nvarchar](20) NULL,
	[Income] [nvarchar](20) NULL,
	[Configuration] [nvarchar](20) NULL,
	[Manufacturers] [nvarchar](20) NULL,
	[Os] [nvarchar](20) NULL,
	[Buy] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luat]    Script Date: 11/17/2021 9:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luat](
	[Stt] [int] IDENTITY(1,1) NOT NULL,
	[Age] [nvarchar](20) NULL,
	[Sex] [nvarchar](20) NULL,
	[Income] [nvarchar](20) NULL,
	[Configuration] [nvarchar](20) NULL,
	[Manufacturers] [nvarchar](20) NULL,
	[Os] [nvarchar](20) NULL,
	[Buy] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DuLieu] ON 

INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1, N'youth', N'male', N'high', N'high', N'SONY', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (2, N'senior', N'male', N'low', N'low', N'DELL', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (3, N'senior', N'female', N'high', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (4, N'youth', N'male', N'high', N'medium', N'DELL', N'Linus', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (5, N'middle-aged', N'male', N'medium', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (6, N'youth', N'female', N'high', N'high', N'DELL', N'Windows', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (7, N'senior', N'male', N'low', N'medium', N'SAMSUNG', N'Linus', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (8, N'youth', N'male', N'low', N'low', N'HP', N'Linus', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (9, N'middle-aged', N'female', N'low', N'high', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (10, N'middle-aged', N'male', N'medium', N'medium', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (11, N'youth', N'female', N'medium', N'high', N'ASUS', N'Windows', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (12, N'youth', N'male', N'high', N'low', N'ASUS', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (13, N'senior', N'male', N'medium', N'medium', N'HP', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (14, N'youth', N'female', N'low', N'high', N'DELL', N'Windows', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (15, N'middle-aged', N'male', N'low', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (16, N'senior', N'male', N'medium', N'low', N'DELL', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (17, N'senior', N'female', N'low', N'medium', N'SONY', N'Windows', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (18, N'middle-aged', N'male', N'high', N'low', N'HP', N'Linus', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (19, N'youth', N'male', N'medium', N'high', N'HP', N'Linus', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (20, N'senior', N'female', N'medium', N'low', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (21, N'senior', N'female', N'low', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (22, N'youth', N'female', N'medium', N'medium', N'ASUS', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (23, N'middle-aged', N'male', N'low', N'high', N'SAMSUNG', N'Windows', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (24, N'youth', N'female', N'high', N'medium', N'DELL', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (25, N'youth', N'male', N'low', N'high', N'ASUS', N'Linus', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (26, N'middle-aged', N'female', N'medium', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (27, N'senior', N'male', N'high', N'medium', N'SONY', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (28, N'senior', N'male', N'medium', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (29, N'middle-aged', N'female', N'high', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (30, N'youth', N'male', N'medium', N'medium', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (31, N'senior', N'female', N'low', N'high', N'ASUS', N'Linus', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (32, N'middle-aged', N'male', N'low', N'low', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (33, N'senior', N'male', N'high', N'high', N'ASUS', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (34, N'senior', N'female', N'high', N'low', N'DELL', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (35, N'middle-aged', N'female', N'medium', N'low', N'SONY', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (36, N'youth', N'male', N'medium', N'low', N'HP', N'Linus', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (37, N'middle-aged', N'male', N'high', N'low', N'ASUS', N'Linus', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (38, N'senior', N'female', N'medium', N'high', N'ASUS', N'Windows', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (39, N'youth', N'female', N'low', N'medium', N'HP', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (40, N'middle-aged', N'female', N'medium', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (41, N'senior', N'male', N'medium', N'high', N'SONY', N'Mac OS', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (42, N'youth', N'male', N'low', N'medium', N'SAMSUNG', N'Linus', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (43, N'middle-aged', N'female', N'high', N'high', N'DELL', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (44, N'youth', N'female', N'medium', N'low', N'HP', N'Linus', N'No')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (45, N'middle-aged', N'male', N'high', N'medium', N'DELL', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (46, N'middle-aged', N'male', N'medium', N'low', N'HP', N'Windows', N'Yes')
INSERT [dbo].[DuLieu] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (47, N'senior', N'female', N'high', N'medium', N'HP', N'Windows', N'No')
SET IDENTITY_INSERT [dbo].[DuLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Luat] ON 

INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1261, N'', N'', N'high', N'', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1262, N'middle-aged', N'', N'low', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1263, N'youth', N'', N'low', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1264, N'', N'female', N'medium', N'', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1265, N'', N'male', N'medium', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1266, N'', N'male', N'medium', N'medium', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1267, N'middle-aged', N'', N'high', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1268, N'youth', N'', N'high', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1269, N'', N'', N'low', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1270, N'', N'female', N'medium', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1271, N'', N'', N'medium', N'', N'SONY', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1272, N'youth', N'female', N'high', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1273, N'', N'', N'low', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1274, N'', N'', N'medium', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1275, N'senior', N'female', N'', N'medium', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1276, N'senior', N'', N'low', N'high', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1277, N'', N'', N'low', N'low', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1278, N'', N'', N'low', N'medium', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1279, N'', N'male', N'medium', N'low', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1280, N'senior', N'', N'high', N'', N'', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1281, N'', N'female', N'medium', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1282, N'', N'female', N'medium', N'low', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1283, N'', N'male', N'medium', N'', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1284, N'', N'', N'medium', N'', N'ASUS', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1285, N'', N'', N'medium', N'', N'DELL', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1286, N'', N'', N'medium', N'', N'HP', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1287, N'', N'', N'medium', N'', N'SAMSUNG', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1288, N'middle-aged', N'', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1289, N'senior', N'', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1290, N'youth', N'male', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1291, N'', N'', N'', N'low', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1292, N'middle-aged', N'', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1293, N'senior', N'male', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1294, N'youth', N'', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1295, N'', N'', N'high', N'', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1296, N'middle-aged', N'', N'low', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1297, N'youth', N'', N'low', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1298, N'', N'female', N'medium', N'', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1299, N'', N'male', N'medium', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1300, N'', N'male', N'medium', N'medium', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1301, N'middle-aged', N'', N'high', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1302, N'youth', N'', N'high', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1303, N'', N'', N'low', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1304, N'', N'female', N'medium', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1305, N'', N'', N'medium', N'', N'SONY', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1306, N'youth', N'female', N'high', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1307, N'', N'', N'low', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1308, N'', N'', N'medium', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1309, N'senior', N'female', N'', N'medium', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1310, N'senior', N'', N'low', N'high', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1311, N'', N'', N'low', N'low', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1312, N'', N'', N'low', N'medium', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1313, N'', N'male', N'medium', N'low', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1314, N'senior', N'', N'high', N'', N'', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1315, N'', N'female', N'medium', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1316, N'', N'female', N'medium', N'low', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1317, N'', N'male', N'medium', N'', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1318, N'', N'', N'medium', N'', N'ASUS', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1319, N'', N'', N'medium', N'', N'DELL', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1320, N'', N'', N'medium', N'', N'HP', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1321, N'', N'', N'medium', N'', N'SAMSUNG', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1322, N'middle-aged', N'', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1323, N'senior', N'', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1324, N'youth', N'male', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1325, N'', N'', N'', N'low', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1326, N'middle-aged', N'', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1327, N'senior', N'male', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1328, N'youth', N'', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1329, N'', N'', N'high', N'', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1330, N'middle-aged', N'', N'low', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1331, N'youth', N'', N'low', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1332, N'', N'female', N'medium', N'', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1333, N'', N'male', N'medium', N'high', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1334, N'', N'male', N'medium', N'medium', N'', N'Linus', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1335, N'middle-aged', N'', N'high', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1336, N'youth', N'', N'high', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1337, N'', N'', N'low', N'', N'', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1338, N'', N'female', N'medium', N'medium', N'APPLE', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1339, N'', N'', N'medium', N'', N'SONY', N'Mac OS', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1340, N'youth', N'female', N'high', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1341, N'', N'', N'low', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1342, N'', N'', N'medium', N'high', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1343, N'senior', N'female', N'', N'medium', N'', N'Windows', N'No')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1344, N'senior', N'', N'low', N'high', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1345, N'', N'', N'low', N'low', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1346, N'', N'', N'low', N'medium', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1347, N'', N'male', N'medium', N'low', N'', N'Linus', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1348, N'senior', N'', N'high', N'', N'', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1349, N'', N'female', N'medium', N'high', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1350, N'', N'female', N'medium', N'low', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1351, N'', N'male', N'medium', N'', N'APPLE', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1352, N'', N'', N'medium', N'', N'ASUS', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1353, N'', N'', N'medium', N'', N'DELL', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1354, N'', N'', N'medium', N'', N'HP', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1355, N'', N'', N'medium', N'', N'SAMSUNG', N'Mac OS', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1356, N'middle-aged', N'', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1357, N'senior', N'', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1358, N'youth', N'male', N'high', N'high', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1359, N'', N'', N'', N'low', N'', N'Windows', N'Yes')
GO
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1360, N'middle-aged', N'', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1361, N'senior', N'male', N'', N'medium', N'', N'Windows', N'Yes')
INSERT [dbo].[Luat] ([Stt], [Age], [Sex], [Income], [Configuration], [Manufacturers], [Os], [Buy]) VALUES (1362, N'youth', N'', N'', N'medium', N'', N'Windows', N'Yes')
SET IDENTITY_INSERT [dbo].[Luat] OFF
GO
USE [master]
GO
ALTER DATABASE [TUVANMAYTINH] SET  READ_WRITE 
GO
