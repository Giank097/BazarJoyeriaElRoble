USE [master]
GO
/****** Object:  Database [db_bazar_joyeria_el_roble]    Script Date: 05/05/2024 03:14:02 PM ******/
CREATE DATABASE [db_bazar_joyeria_el_roble]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_bazar_joyeria_el_roble', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_bazar_joyeria_el_roble.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_bazar_joyeria_el_roble_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_bazar_joyeria_el_roble_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_bazar_joyeria_el_roble].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET  MULTI_USER 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_bazar_joyeria_el_roble]
GO
/****** Object:  Table [dbo].[tb_admin_type]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_type](
	[id] [int] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[permissions] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_admin_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_admin_user]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_user](
	[id] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[type_id] [int] NOT NULL,
	[last_login] [timestamp] NOT NULL,
 CONSTRAINT [PK_tb_admin_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_order_detail]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_order_detail](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[payment_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_order_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_order_item]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_order_item](
	[id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tb_order_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_payment_detail]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_payment_detail](
	[id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[provider] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_payment_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_prod_category]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_prod_category](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_prod_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_prod_discount]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_prod_discount](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[disc_percentage] [decimal](18, 0) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_prod_discount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_prod_inventory]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_prod_inventory](
	[id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tb_prod_inventory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_product]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_product](
	[id] [int] NOT NULL,
	[SKU] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[discount_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[inventory_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[id] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[telephone] [int] NOT NULL,
	[address] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user_address]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_address](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[address_line1] [varchar](100) NOT NULL,
	[address_line2] [varchar](100) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[postal_code] [varchar](50) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[telephone] [int] NOT NULL,
	[mobile] [int] NOT NULL,
 CONSTRAINT [PK_tb_user_address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user_payment]    Script Date: 05/05/2024 03:14:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_payment](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[payment_type] [varchar](50) NOT NULL,
	[provider] [varchar](50) NOT NULL,
	[account_no] [int] NOT NULL,
	[expiry] [date] NOT NULL,
 CONSTRAINT [PK_tb_user_payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_admin_user]  WITH CHECK ADD  CONSTRAINT [FK_tb_admin_user_tb_admin_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[tb_admin_type] ([id])
GO
ALTER TABLE [dbo].[tb_admin_user] CHECK CONSTRAINT [FK_tb_admin_user_tb_admin_type]
GO
ALTER TABLE [dbo].[tb_order_detail]  WITH CHECK ADD  CONSTRAINT [FK_tb_order_detail_tb_payment_detail] FOREIGN KEY([payment_id])
REFERENCES [dbo].[tb_payment_detail] ([id])
GO
ALTER TABLE [dbo].[tb_order_detail] CHECK CONSTRAINT [FK_tb_order_detail_tb_payment_detail]
GO
ALTER TABLE [dbo].[tb_order_detail]  WITH CHECK ADD  CONSTRAINT [FK_tb_order_detail_tb_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[tb_user] ([id])
GO
ALTER TABLE [dbo].[tb_order_detail] CHECK CONSTRAINT [FK_tb_order_detail_tb_user]
GO
ALTER TABLE [dbo].[tb_order_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_order_item_tb_order_detail] FOREIGN KEY([order_id])
REFERENCES [dbo].[tb_order_detail] ([id])
GO
ALTER TABLE [dbo].[tb_order_item] CHECK CONSTRAINT [FK_tb_order_item_tb_order_detail]
GO
ALTER TABLE [dbo].[tb_order_item]  WITH CHECK ADD  CONSTRAINT [FK_tb_order_item_tb_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[tb_product] ([id])
GO
ALTER TABLE [dbo].[tb_order_item] CHECK CONSTRAINT [FK_tb_order_item_tb_product]
GO
ALTER TABLE [dbo].[tb_product]  WITH CHECK ADD  CONSTRAINT [FK_tb_product_tb_prod_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[tb_prod_category] ([id])
GO
ALTER TABLE [dbo].[tb_product] CHECK CONSTRAINT [FK_tb_product_tb_prod_category]
GO
ALTER TABLE [dbo].[tb_product]  WITH CHECK ADD  CONSTRAINT [FK_tb_product_tb_prod_discount] FOREIGN KEY([discount_id])
REFERENCES [dbo].[tb_prod_discount] ([id])
GO
ALTER TABLE [dbo].[tb_product] CHECK CONSTRAINT [FK_tb_product_tb_prod_discount]
GO
ALTER TABLE [dbo].[tb_product]  WITH CHECK ADD  CONSTRAINT [FK_tb_product_tb_prod_inventory] FOREIGN KEY([inventory_id])
REFERENCES [dbo].[tb_prod_inventory] ([id])
GO
ALTER TABLE [dbo].[tb_product] CHECK CONSTRAINT [FK_tb_product_tb_prod_inventory]
GO
ALTER TABLE [dbo].[tb_user_address]  WITH CHECK ADD  CONSTRAINT [FK_tb_user_address_tb_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[tb_user] ([id])
GO
ALTER TABLE [dbo].[tb_user_address] CHECK CONSTRAINT [FK_tb_user_address_tb_user]
GO
ALTER TABLE [dbo].[tb_user_payment]  WITH CHECK ADD  CONSTRAINT [FK_tb_user_payment_tb_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[tb_user] ([id])
GO
ALTER TABLE [dbo].[tb_user_payment] CHECK CONSTRAINT [FK_tb_user_payment_tb_user]
GO
USE [master]
GO
ALTER DATABASE [db_bazar_joyeria_el_roble] SET  READ_WRITE 
GO
