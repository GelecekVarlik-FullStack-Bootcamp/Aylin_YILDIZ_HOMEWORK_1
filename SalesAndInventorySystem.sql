USE [master]
GO
/****** Object:  Database [SalesAndInvertoryManagementSystem]    Script Date: 13.04.2022 18:03:11 ******/
CREATE DATABASE [SalesAndInvertoryManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SalesAndInvertoryManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SalesAndInvertoryManagementSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SalesAndInvertoryManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SalesAndInvertoryManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesAndInvertoryManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET QUERY_STORE = OFF
GO
USE [SalesAndInvertoryManagementSystem]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [nvarchar](50) NOT NULL,
	[customer_mobile] [nvarchar](50) NOT NULL,
	[customer_email] [nvarchar](50) NOT NULL,
	[customer_address] [nvarchar](50) NOT NULL,
	[customer_username] [nvarchar](50) NOT NULL,
	[customer_password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[inventory_id] [int] IDENTITY(1,1) NOT NULL,
	[inventory_items] [nvarchar](50) NOT NULL,
	[invertory_description] [nvarchar](50) NOT NULL,
	[invertory_type] [nvarchar](50) NOT NULL,
	[invertory_number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_amount] [nvarchar](20) NOT NULL,
	[payment_description] [nvarchar](50) NOT NULL,
	[payment_date] [date] NOT NULL,
	[payment_customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_role_id] [int] NOT NULL,
	[permission_title] [nvarchar](50) NOT NULL,
	[permission_module] [nvarchar](50) NOT NULL,
	[permission_description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_title] [nvarchar](50) NOT NULL,
	[role_description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[sale_id] [int] IDENTITY(1,1) NOT NULL,
	[sale_amount] [nvarchar](20) NOT NULL,
	[sale_type] [nvarchar](50) NOT NULL,
	[sale_description] [nvarchar](50) NOT NULL,
	[sale_customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplier_id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_mobile] [nvarchar](50) NOT NULL,
	[supplier_name] [nvarchar](50) NOT NULL,
	[supplier_email] [nvarchar](50) NOT NULL,
	[supplier_address] [nvarchar](50) NOT NULL,
	[supplier_username] [nvarchar](50) NOT NULL,
	[supplier_password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13.04.2022 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_role_id] [int] NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_email] [nvarchar](50) NOT NULL,
	[user_dob] [date] NOT NULL,
	[user_address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Customer] FOREIGN KEY([payment_customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Customer]
GO
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Role] FOREIGN KEY([permission_role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_Permission_Role]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Customer] FOREIGN KEY([sale_customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Customer]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([user_role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [SalesAndInvertoryManagementSystem] SET  READ_WRITE 
GO
