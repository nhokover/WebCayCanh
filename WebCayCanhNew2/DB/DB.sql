/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [ShopCayCanh]    Script Date: 18-Apr-18 1:00:05 AM ******/
CREATE DATABASE [ShopCayCanh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopCayCanh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.PROGRAMER\MSSQL\DATA\ShopCayCanh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopCayCanh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.PROGRAMER\MSSQL\DATA\ShopCayCanh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShopCayCanh] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopCayCanh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopCayCanh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopCayCanh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopCayCanh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopCayCanh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopCayCanh] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopCayCanh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopCayCanh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopCayCanh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopCayCanh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopCayCanh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopCayCanh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopCayCanh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopCayCanh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopCayCanh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopCayCanh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopCayCanh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopCayCanh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopCayCanh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopCayCanh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopCayCanh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopCayCanh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopCayCanh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopCayCanh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopCayCanh] SET  MULTI_USER 
GO
ALTER DATABASE [ShopCayCanh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopCayCanh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopCayCanh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopCayCanh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopCayCanh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopCayCanh] SET QUERY_STORE = OFF
GO
USE [ShopCayCanh]
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
USE [ShopCayCanh]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cay]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cay](
	[MaCay] [nvarchar](50) NOT NULL,
	[TenCay] [nvarchar](50) NULL,
	[MaNoiNhap] [nvarchar](50) NULL,
	[ChieuCao] [int] NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaLoaiCay] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cay] PRIMARY KEY CLUSTERED 
(
	[MaCay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiCay]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCay](
	[MaLoaiCay] [nvarchar](50) NOT NULL,
	[TenLoaiCay] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiCay] PRIMARY KEY CLUSTERED 
(
	[MaLoaiCay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiNhap]    Script Date: 18-Apr-18 1:00:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiNhap](
	[MaNoiNhap] [nvarchar](50) NOT NULL,
	[TenNoiNhap] [nvarchar](50) NULL,
 CONSTRAINT [PK_NoiNhap] PRIMARY KEY CLUSTERED 
(
	[MaNoiNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201804171423439_InitialCreate', N'WebCayCanh.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC617649DB46F0157E2AE85489422518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB2E020416393C331C0EC9E170B8FFFEFDCFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFD667CE6F80FC6C79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFB3F59070716060813B00C63FC3E21D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C4FC1DCFA7E8718AC8DD2823368D13CF4520C80C7B0BD3408404145110F3F8438C67340AC872164201F26E1F430C740BE4C5988B7F5C9277EDC9FE21EB895536CCA1EC24A681DF13F0E088ABC6129BAFA460B3501D28EF0C944C1F59AF53054ECC0B07A745EF030F1420323C9E7A11239E9897058B9338BCC27494371C6590E711C07D0DA2CFA32AE29ED1B9DD5E614A87A37DF66FCF98261E4D223C2138A111F2F68C9B64EEB9F66FF8F136F88CC9E4E860BE387AFDF215728E5EFD888F5E567B0A7D05BA5A0114DD44418823900D2F8AFE9B86556F67890D8B6695369956C096605698C6257A7887C992DEC17C397C6D1AE7EE0376F2126E5C1F880B93081AD12881CFABC4F3D0DCC345BDD5C893FDDFC0F5F0E5AB41B85EA17B77990EBDC01F264E04F3EA3DF6D2DAF8CE0DB3E9551BEF4F9CEC3C0A7CF65DB7AFACF6D32C48229B7526D092DCA26889695DBAB1551A6F27936650C39B758EBAFBA6CD2495CD5B49CA3AB4CA4CC8596C7A36E4F23E2DDFCE167712863078A969318D34199CB4578D84C67B4649521ACE4157C321D0A1FFF33A78E623D71B6021ECC0055C90851BF9B8E8E5CF01981D22BD65BE41710CEB80F32B8AEF1A44873F07107D86ED2402F39C51E4874FCEEDE62E20F82AF1E7CCEA37C76BB0A1B9FD1A9C239B06D11961ADD6C67B17D89F83849E11E71451FC81DA3920FBBC75FDEE0083887362DB388ECFC198B1330DC0C3CE012F083D3AEC0DC7D6A76D3B22530FB9BEDA131156D24F3969E98DA829248F4443A6F24A9A447D172C5DD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6E7A52334BCA397C2EEBEA7B7DEE6AD5B0B2A6A9CC10A897FC10447B08C393788521C917204BAAC1BDB7016D2E1634C9F7C6F4A397D445E3234AB956643BA080C3F1B52D8DD9F0DA998507CEF3ACC2BE970FCC98901BE13BDFA64D53EE704C9363D1D6ADDDC34F3CDAC01BAE97212C781EDA6B34011F8E2618BBAFCE0C319ED318CAC37621C043A0686EEB22D0F4AA06FA66854D7E4147B9862E3C4CE02835314DBC891D5081D727A0896EFA80AC1CA78485DB81F249E60E938628D103B04C530535D42E569E112DB0D91D7AA25A165C72D8CF5BDE021D69CE21013C6B055135D98ABC31F4C80828F30286D1A1A5B158B6B36448DD7AA1BF33617B61C77292AB1119B6CF19D3576C9FDB72731CC668D6DC0389B55D245006D286F1B06CACF2A5D0D403CB8EC9A810A27268D8172976A23065AD7D8160CB4AE926767A0D911B5EBF80BE7D55D33CFFA4179F3DB7AA3BAB6609B357DEC986966BE27B4A1D00247B2799ECE59257EA08AC319C8C9CF67317775451361E0334CEB219BD2DF55FAA156338868444D80A5A1B580F24B4009489A503D84CB63798DD2712FA2076C1E776B84E56BBF005BB10119BB7A195A21D45F998AC6D9E9F451F4ACB006C9C83B1D162A380A831017AF7AC73B284517979515D3C517EEE30D573AC607A341412D9EAB4649796706D7526E9AED5A5239647D5CB2B5B424B84F1A2DE59D195C4BDC46DB95A4700A7AB8056BA9A8BE850F34D9F24847B1DB1475632B4B91E205634B934B35BE4461E8926525B78A9718B32CB16AFA62D63FE5C8CF302C3B56641E15D2169C6810A125166A8135487AEE46313D4514CD118BF34C1D5F2253EEAD9AE53F6759DD3EE541CCF7819C9AFD9DB590AFEE6B5BADEC8B708873E8A0CF1C9A348AAE187E757383A5BA210F458AC0FD34F0129FE8FD2B7DEBECFAAEDA3E2B9111C69620BFE43F49CA92BCDCBAE63B8D8B3C278619A3C27B597D9CF4103A6DE7BE6755DF3A7F548F9287A7AA28BA90D5D6C64DE7C6F4192BD141EC3F54AD084F33AB78564A158017F5C4A82436486095BAEEA8F5DC932A66BDA63BA29060528514AA7A48594D23A90959AD58094FA3513545770E72E248155DAEED8EAC4821A9422BAA57C056C82CD67547556499548115D5DDB1CB9413710DDDE17D4B7B6C5975E3CA0EB6EBED5C1A8CA7591087D9F82AF7F755A04A714F2C7E432F81F1F29D3426EDE96E5563CAC219EB19930643BFEED42EBEEBCB4EE36DBD1EB3769B5D5BDA9B6EF3F578FD4CF6490D433ADB892405F7E28C279CE5C6FC5CD5FE78463A686524A691AB11B6F5C798627FC40846B32FDED473315BC473824B44DC058E6996C1611EEE1F1C0A0F7076E7318C15C78EA73897EA5EC4D4C76C03C958E41E45F61D8AE4D488351E8C94A052D4F98238F86162FE99B63A4E0318ECAFB478CFB8883F10F74B0215B751828DBFE454CF6112E89B4F583BFADCA1BB562FFEF89435DD33AE239831C7C6BEA0CB5546B8FE08A2973459D335A459F969C4F39D50B597074A546142ACFED060EED2411E19E4527EE7A387EFFB8AA67C48B016A2E2B1C0507883A850F71860152CED4300073E69FA10A05F67D50F0356114DFB28C025FDC1C42701DD97A1BCE516B71AC59168134B52AAE7D694EAB5F22BB7BD374999D76B4D7439BBBA07DC1A19D42B58C6334B3E1E6C7754E4160F86BD4DD37EF284E25DC9212EB33BB69B3ABCC96CE1863BA1FF5592F00EA4B529D274B69F0ABC695BD38571773C9FB25FC2EF8E191B4FDEDA7E5AEFA68D4D17E6DD7163EB95BCBB63B6B6ADFD73CB96D6790BDD7A2AAE9C55A4B98E51C582DB526DB3C0399CF0E7011841E651662F24D5B95D4D79A92D0C4B123D537D5299C8589A38125F89A2996DBFBEF20DBFB1B39CA699AD2615B389375FFF1B79739A66DE9A04C76D24092B530C5589DB2DEB585306D4734A0AAEF5A42507BDCD676DBC5B7F4E39C08328A5367B3477C4CF27E57710950C39757AA4F8CAD7BDB077567E5111F6EFD85D9610ECF71509B66BBB664173411641BE790B12E5244284E61253E4C0967A125177816C0AD52CC69C3EF14EE376ECA6638E9D0B729DD030A1D065ECCFBD5AC08B39014DFCD33CE6BACCE3EB30FDB59221BA0062BA2C367F4D7E4E5CCF29E43E57C4843410CCBBE0115D3696944576978F05D255403A0271F5154ED12DF6430FC0E26B3243F77815D9C0FCDEE125B21FCB08A00EA47D20EA6A1F9FBA6819213FE618657BF8041B76FC8737FF017C1F008F58540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a02f8a56-fdc0-47e9-8814-32a0262f02e5', N'pham.t.thien@gmail.com', 0, N'AAOc+EDIYlgtu6kNxcRQilrwtmHQ79aOjfTc/f0GcaiF3R/nBI6GSrpzxhfCAMObsQ==', N'6ebfdb32-a9d2-4eb6-b0a3-9038c5aa1ad5', NULL, 0, 0, NULL, 1, 0, N'pham.t.thien@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e6b06203-3cb2-48cd-9ab2-10b4ae59a46f', N'pham.t.thien1@gmail.com', 0, N'ACyzGpTy7NFNJvw7bSF9BqNdMo08zjHkiKz44VFGq0ChWhwosddUjfDdQ/7QBCJr+w==', N'2ed696e8-597a-493d-bc7b-20b93f25abb3', NULL, 0, 0, NULL, 1, 0, N'pham.t.thien1@gmail.com')
INSERT [dbo].[Cay] ([MaCay], [TenCay], [MaNoiNhap], [ChieuCao], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [TinhTrang], [MaLoaiCay]) VALUES (N'01', N'Xương rồng tai thỏ', N'NN', 5, N'Chua co', N'1.jpg', NULL, NULL, NULL, 30000, N'1', N'1')
INSERT [dbo].[Cay] ([MaCay], [TenCay], [MaNoiNhap], [ChieuCao], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [TinhTrang], [MaLoaiCay]) VALUES (N'02', N'Sen đá ngọc ', N'NN', 3, N'Chua co', N'2.jpg', NULL, NULL, NULL, 20000, N'1', N'2')
INSERT [dbo].[Cay] ([MaCay], [TenCay], [MaNoiNhap], [ChieuCao], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [TinhTrang], [MaLoaiCay]) VALUES (N'03', N'Sedum xanh', N'NN', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cay] ([MaCay], [TenCay], [MaNoiNhap], [ChieuCao], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [TinhTrang], [MaLoaiCay]) VALUES (N'04', N'Sedum', N'NN', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LoaiCay] ([MaLoaiCay], [TenLoaiCay]) VALUES (N'1', N'Sen đá')
INSERT [dbo].[LoaiCay] ([MaLoaiCay], [TenLoaiCay]) VALUES (N'2', N'Xương rồng')
INSERT [dbo].[LoaiCay] ([MaLoaiCay], [TenLoaiCay]) VALUES (N'3', N'Cây trong phòng')
INSERT [dbo].[LoaiCay] ([MaLoaiCay], [TenLoaiCay]) VALUES (N'4', N'Cây phong thủy')
INSERT [dbo].[NoiNhap] ([MaNoiNhap], [TenNoiNhap]) VALUES (N'DL', N'Đà Lạt')
INSERT [dbo].[NoiNhap] ([MaNoiNhap], [TenNoiNhap]) VALUES (N'HCM', N'Thành phố Hồ Chí Minh')
INSERT [dbo].[NoiNhap] ([MaNoiNhap], [TenNoiNhap]) VALUES (N'NN', N'Học viện Nông nghiệp Hà Nội')
INSERT [dbo].[NoiNhap] ([MaNoiNhap], [TenNoiNhap]) VALUES (N'TQ', N'Trung Quốc')
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18-Apr-18 1:00:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 18-Apr-18 1:00:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 18-Apr-18 1:00:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 18-Apr-18 1:00:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 18-Apr-18 1:00:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 18-Apr-18 1:00:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cay]  WITH CHECK ADD  CONSTRAINT [FK_Cay_LoaiCay] FOREIGN KEY([MaLoaiCay])
REFERENCES [dbo].[LoaiCay] ([MaLoaiCay])
GO
ALTER TABLE [dbo].[Cay] CHECK CONSTRAINT [FK_Cay_LoaiCay]
GO
ALTER TABLE [dbo].[Cay]  WITH CHECK ADD  CONSTRAINT [FK_Cay_NoiNhap] FOREIGN KEY([MaNoiNhap])
REFERENCES [dbo].[NoiNhap] ([MaNoiNhap])
GO
ALTER TABLE [dbo].[Cay] CHECK CONSTRAINT [FK_Cay_NoiNhap]
GO
USE [master]
GO
ALTER DATABASE [ShopCayCanh] SET  READ_WRITE 
GO
