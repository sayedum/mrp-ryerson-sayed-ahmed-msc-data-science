USE [master]
GO
/****** Object:  Database [mrp_experiment_phase_data_process]    Script Date: 2019-07-17 5:30:12 PM ******/
CREATE DATABASE [mrp_experiment_phase_data_process]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mrp_experiment_phase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\mrp_experiment_phase.mdf' , SIZE = 663552KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mrp_experiment_phase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\mrp_experiment_phase_log.ldf' , SIZE = 335872KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mrp_experiment_phase_data_process].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET ARITHABORT OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET RECOVERY FULL 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET  MULTI_USER 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'mrp_experiment_phase_data_process', N'ON'
GO
ALTER DATABASE [mrp_experiment_phase_data_process] SET QUERY_STORE = OFF
GO
USE [mrp_experiment_phase_data_process]
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
ALTER DATABASE [mrp_experiment_phase_data_process] SET  READ_WRITE 
GO
