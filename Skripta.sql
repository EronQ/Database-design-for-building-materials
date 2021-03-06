CREATE DATABASE DEPO
GO
USE [DEPO]
GO
CREATE TABLE [Dega](
	[ID_Dega] [char](10) NOT NULL,
	[Adresa] [varchar](50) NULL,
	[Qyteti] [varchar](20) NOT NULL,
 PRIMARY KEY CLUSTERED 
( [ID_Dega] ASC) 
   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  ) ON [PRIMARY]
  
  GO
CREATE TABLE [Klientët](
	[ID_Klienti] [char](12) NOT NULL,
	[Emri] [varchar](25) NOT NULL,
	[Mbiemri] [varchar](30) NOT NULL,
	[Adresa] [varchar](35) NULL,
	[Qyteti] [varchar](20) NULL,
	[Prefix] [varchar](5) NULL,
	[Telefoni] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
( [ID_Klienti] ASC )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

  GO
CREATE TABLE [Porositë](
	[ID_Porosia] [char](10) NOT NULL,
	[ID_Klienti] [char](12) NULL,
	[ID_Punëtori] [char](10) NULL,
	[ID_Dega] [char](10) NULL,
	[Data] [date] NULL,
PRIMARY KEY CLUSTERED 
( [ID_Porosia] ASC ) 
      WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

  GO
CREATE TABLE [Prodhuesit](
	[ID_Prodhuesi] [char](12) NOT NULL,
	[Emri] [varchar](30) NOT NULL,
	[Qyteti] [varchar](20) NULL,
	[Shteti] [varchar](20) NOT NULL,
	[Prefix] [varchar](5) NULL,
	[Telefoni] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
( [ID_Prodhuesi] ASC ) 
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

  GO
CREATE TABLE [Produktet](
	[ID_Produkti] [char](11) NOT NULL,
	[ID_Prodhuesi] [char](12) NULL,
	[Emri] [varchar](35) NOT NULL,
	[Çmimi] [smallmoney] NOT NULL,
	[Njësia_matëse] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
( [ID_Produkti] ASC )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

  GO
CREATE TABLE [Produktet_e_porositura](
	[ID_Produkti] [char](11) NOT NULL,
	[ID_Porosia] [char](10) NOT NULL,
	[Sasia_e_porositur] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
 (  [ID_Produkti] ASC,
	[ID_Porosia] ASC )
	   WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
 ) ON [PRIMARY]

  GO
CREATE TABLE [Produktet_ne_dege](
	[ID_Produkti] [char](11) NOT NULL,
	[ID_Dega] [char](10) NOT NULL,
	[Sasia] [int] NULL,
PRIMARY KEY CLUSTERED 
 (  [ID_Produkti] ASC,
	[ID_Dega] ASC )
	  WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
 ) ON [PRIMARY]

  GO
CREATE TABLE [Punëtorët](
	[ID_Punëtori] [char](10) NOT NULL,
	[ID_Dega] [char](10) NULL,
	[Emri] [varchar](25) NOT NULL,
	[Mbiemri] [varchar](30) NOT NULL,
	[Adresa] [varchar](35) NULL,
	[Qyteti] [varchar](20) NULL,
	[Paga] [money] NOT NULL,
	[Prefix] [varchar](5) NULL,
	[Telefoni] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
( [ID_Punëtori] ASC )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

  GO

INSERT [Dega] ([ID_Dega], [Adresa], [Qyteti]) VALUES (N'D01       ', N'Rr. Nënë Tereza Nr. 91', N'Prishtine')
INSERT [Dega] ([ID_Dega], [Adresa], [Qyteti]) VALUES (N'D02       ', N'Rr. Minatorët e Trepçës  Nr. 72 ', N'Mitrovice')
INSERT [Dega] ([ID_Dega], [Adresa], [Qyteti]) VALUES (N'D03       ', N'Rr. Tahir Sinani  Nr. 56', N'Prizren')
INSERT [Dega] ([ID_Dega], [Adresa], [Qyteti]) VALUES (N'D04       ', N'Magjistralja M9 ', N'Peje')

INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K001        ', N'Egzon', N'Aliu', N'Bregu i Diellit', N'Prishtine', N'+377', N'45 760 230')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K002        ', N'Lirim', N'Xhokli', N'Rr. Mbreteresha Teute', N'Peje', N'+377', N'44 343 545')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K003        ', N'Besnik', N'Krasniqi', N'Rr. Ukshin Hoti', N'Prishtine', N'+386', N'49 132 222')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K004        ', N'Faton', N'Hoxha', N'Rr. Nena Tereze', N'Gjakove', N'+377', N'44 178 990')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K005        ', N'Adnan', N'Ferati', N'Rr. Deshmoret e Kombit', N'Ferizaj', N'+386', N'49 345 487')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K006        ', N'Blerim', N'Berisha', N'Rr. Garibaldi', N'Prishtine', N'+377', N'45 907 674')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K007        ', N'Arber ', N'Ademi', N'Rr. Madeline Albright', N'Gjilan', N'+377', N'45 237 099')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K008        ', N'Bujar', N'Musliu', N'Rr. Shqiperia', N'Lipjan', N'+386', N'49 788 675')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K009        ', N'Burim', N'Qerkini', N'Rr. Brigada 142', N'Mitrovice', N'+377', N'44 575 879')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K010        ', N'Granit', N'Bega', N'Rr. Ismail Qemajli', N'Vushtrri', N'+386', N'49 593 082')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K011        ', N'Lenard', N'Aliu', N'Rr. Deshmoret e Kombit', N'Skenderaj', N'+377', N'44 167 375')
INSERT [Klientët] ([ID_Klienti], [Emri], [Mbiemri], [Adresa], [Qyteti], [Prefix], [Telefoni]) VALUES (N'K012        ', N'Edlir', N'Ibrahimi', N'Rr. Ukë Bytyci', N'Prizren', N'+377', N'44 325 197')

INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50001   ', N'K002        ', N'PU005     ', N'D04       ', CAST(N'2016-07-11' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50002   ', N'K005        ', N'PU002     ', N'D01       ', CAST(N'2016-08-02' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50003   ', N'K009        ', N'PU011     ', N'D02       ', CAST(N'2016-08-10' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50004   ', N'K010        ', N'PU011     ', N'D02       ', CAST(N'2016-08-29' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50005   ', N'K003        ', N'PU001     ', N'D01       ', CAST(N'2016-09-12' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50006   ', N'K008        ', N'PU009     ', N'D01       ', CAST(N'2016-09-20' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50007   ', N'K004        ', N'PU008     ', N'D03       ', CAST(N'2016-10-05' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50008   ', N'K007        ', N'PU001     ', N'D01       ', CAST(N'2016-10-17' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50009   ', N'K001        ', N'PU011     ', N'D02       ', CAST(N'2016-11-23' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50010   ', N'K006        ', N'PU009     ', N'D01       ', CAST(N'2016-12-08' AS Date))
INSERT [Porositë] ([ID_Porosia], [ID_Klienti], [ID_Punëtori], [ID_Dega], [Data]) VALUES (N'PO50011   ', N'K012        ', N'PU004     ', N'D03       ', CAST(N'2017-01-03' AS Date))

INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0001      ', N'Colacem', N'Lezhe', N'Shqiperi', N'+355', N'215 29211')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0002      ', N'Titan', N'Tirane', N'Shqiperi ', N'+355', N'445 02350')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0003      ', N'Edilcentro', N'Tirane', N'Shqiperi', N'+355', N'435 77281')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0004      ', N'Italicement', N'Bergamo', N'Itali', N'+39', N'035 396 111')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0005      ', N'Sidmetal', N'Thesalonik', N'Greqi', N'+30', N'2310 788 788')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0006      ', N'Beles', N'Laze', N'Slloveni', N'+386', N'031 745 833')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0007      ', N'Sharrcem', N'Hani i Elezit', N'Kosove', N'+377', N'44 230 300')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0008      ', N'KUK-Commerce', N'Prizren', N'Kosove', N'+377', N'44 277 006')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0009      ', N'Bunjamini', N'Mitrovice', N'Kosove', N'+377', N'44 256 051')
INSERT [Prodhuesit] ([ID_Prodhuesi], [Emri], [Qyteti], [Shteti], [Prefix], [Telefoni]) VALUES (N'PR0010      ', N'Kugler Colors', N'Mindelheim', N'Gjermani', N'+49', N'8341 62040')

INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1001   ', N'PR0001      ', N'Cement', 30.0000, N'Thes')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1002   ', N'PR0007      ', N'Zhavor (rërë)', 5.5000, N'Kubik')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1003   ', N'PR0002      ', N'Tulla betoni', 2.5000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1004   ', N'PR0002      ', N'Tulla të bardha', 2.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1005   ', N'PR0002      ', N'Tjegulla', 4.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1006   ', N'PR0009      ', N'Gelqere', 1.5000, N'Kilogram')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1007   ', N'PR0006      ', N'Dërrasë (trarë)', 12.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1008   ', N'PR0010      ', N'Ngjyre', 10.0000, N'Litër')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1009   ', N'PR0008      ', N'Shufer Metalike', 1.3000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1010   ', N'PR0008      ', N'Rrjete Metalike', 13.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1011   ', N'PR0002      ', N'Fiber Xhami', 7.5000, N'Metër')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1012   ', N'PR0006      ', N'Shkume izoluese', 3.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1013   ', N'PR0006      ', N'Stiropor', 16.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1014   ', N'PR0004      ', N'Cement', 40.0000, N'Thes')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1015   ', N'PR0003      ', N'Tulla betoni', 4.0000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1016   ', N'PR0007      ', N'Gelqere', 2.0000, N'Kilogram')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1017   ', N'PR0003      ', N'Tjegulla', 4.5000, N'Copë')
INSERT [Produktet] ([ID_Produkti], [ID_Prodhuesi], [Emri], [Çmimi], [Njësia_matëse]) VALUES (N'PROD1018   ', N'PR0005      ', N'Shufer Metalike', 1.8000, N'Copë')

INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1001   ', N'PO50005   ', 40)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1001   ', N'PO50006   ', 30)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1001   ', N'PO50008   ', 45)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1002   ', N'PO50008   ', 500)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1002   ', N'PO50009   ', 120)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1003   ', N'PO50001   ', 300)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1004   ', N'PO50010   ', 500)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1005   ', N'PO50006   ', 100)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1007   ', N'PO50002   ', 42)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1008   ', N'PO50003   ', 15)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1009   ', N'PO50006   ', 50)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1010   ', N'PO50008   ', 55)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1011   ', N'PO50007   ', 25)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1013   ', N'PO50011   ', 60)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1014   ', N'PO50010   ', 16)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1015   ', N'PO50004   ', 200)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1016   ', N'PO50011   ', 34)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1018   ', N'PO50004   ', 60)
INSERT [Produktet_e_porositura] ([ID_Produkti], [ID_Porosia], [Sasia_e_porositur]) VALUES (N'PROD1018   ', N'PO50008   ', 80)

INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1001   ', N'D01       ', 200)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1001   ', N'D02       ', 20)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1001   ', N'D03       ', 150)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1001   ', N'D04       ', 300)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1002   ', N'D01       ', 90)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1002   ', N'D02       ', 20)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1002   ', N'D03       ', 55)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1002   ', N'D04       ', 0)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1003   ', N'D01       ', 5000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1003   ', N'D02       ', 3800)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1003   ', N'D03       ', 4000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1003   ', N'D04       ', 2600)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1004   ', N'D01       ', 10000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1004   ', N'D02       ', 8500)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1004   ', N'D03       ', 6000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1004   ', N'D04       ', 7500)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1005   ', N'D01       ', 9500)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1005   ', N'D02       ', 8950)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1005   ', N'D03       ', 6050)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1005   ', N'D04       ', 4325)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1006   ', N'D01       ', 130)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1006   ', N'D02       ', 240)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1006   ', N'D03       ', 75)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1006   ', N'D04       ', 57)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1007   ', N'D01       ', 1560)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1007   ', N'D02       ', 1640)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1007   ', N'D03       ', 1900)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1007   ', N'D04       ', 1060)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1008   ', N'D01       ', 700)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1008   ', N'D02       ', 630)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1008   ', N'D03       ', 460)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1008   ', N'D04       ', 340)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1009   ', N'D01       ', 2000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1009   ', N'D02       ', 3000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1009   ', N'D03       ', 2500)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1009   ', N'D04       ', 2100)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1010   ', N'D01       ', 245)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1010   ', N'D02       ', 160)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1010   ', N'D03       ', 145)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1010   ', N'D04       ', 80)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1011   ', N'D01       ', 200)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1011   ', N'D02       ', 50)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1011   ', N'D03       ', 75)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1011   ', N'D04       ', 0)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1012   ', N'D01       ', 50)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1012   ', N'D02       ', 60)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1012   ', N'D03       ', 70)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1012   ', N'D04       ', 65)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1013   ', N'D01       ', 520)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1013   ', N'D02       ', 430)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1013   ', N'D03       ', 490)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1013   ', N'D04       ', 300)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1014   ', N'D01       ', 110)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1014   ', N'D02       ', 70)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1014   ', N'D03       ', 55)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1014   ', N'D04       ', 72)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1015   ', N'D01       ', 800)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1015   ', N'D02       ', 550)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1015   ', N'D03       ', 600)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1015   ', N'D04       ', 520)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1016   ', N'D01       ', 45)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1016   ', N'D02       ', 60)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1016   ', N'D03       ', 0)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1016   ', N'D04       ', 90)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1017   ', N'D01       ', 1200)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1017   ', N'D02       ', 1000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1017   ', N'D03       ', 1450)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1017   ', N'D04       ', 910)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1018   ', N'D01       ', 8000)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1018   ', N'D02       ', 9500)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1018   ', N'D03       ', 7600)
INSERT [Produktet_ne_dege] ([ID_Produkti], [ID_Dega], [Sasia]) VALUES (N'PROD1018   ', N'D04       ', 5200)

INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU001     ', N'D01       ', N'Arber', N'Ramadani', N'Rr. Deshmoret e Kombit', N'Ferizaj', 250.0000, N'+377', N'44 563 254')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU002     ', N'D01       ', N'Fatos', N'Latifi', N'Rr. Agim Ramadani', N'Prishtine', 300.0000, N'+386', N'49 532 025')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU003     ', N'D04       ', N'Besart', N'Sadiku', N'Bulevardi i Deshmoreve', N'Prishtine', 250.0000, N'+377', N'45 674 112')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU004     ', N'D03       ', N'Rinor', N'Ejupi', N'Rr. Enver Maloku', N'Prishtine', 250.0000, N'+377', N'44 155 235')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU005     ', N'D04       ', N'Fisnik', N'Ahmeti', N'Rr. William Walker', N'Prizren', 250.0000, N'+377', N'44 764 765')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU006     ', N'D02       ', N'Shpend', N'Ismaili', N'Rr. Mulla Idrizi', N'Gjilan', 250.0000, N'+386', N'49 556 745')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU007     ', N'D02       ', N'Albina ', N'Musliu', N'Rr. Vellezerit Gervalla', N'Ferizaj', 250.0000, N'+386', N'49 202 536')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU008     ', N'D03       ', N'Arta', N'Gashi', N'Rr. Ismail Qemajli', N'Gjakove', 250.0000, N'+377', N'44 369 878')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU009     ', N'D01       ', N'Edon', N'Heta', N'Rr. Zahir Pajaziti', N'Podujeve', 300.0000, N'+386', N'49 865 485')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU010     ', N'D02       ', N'Andi', N'Tahiri', N'Rr. Skenderbeu', N'Drenas', 250.0000, N'+377', N'45 237 126')
INSERT [Punëtorët] ([ID_Punëtori], [ID_Dega], [Emri], [Mbiemri], [Adresa], [Qyteti], [Paga], [Prefix], [Telefoni]) VALUES (N'PU011     ', N'D02       ', N'Linda', N'Mehmeti', N'Rr. Mbretersha Teute', N'Mitrovice', 300.0000, N'+386', N'49 214 586')

GO
    ALTER TABLE [Produktet_ne_dege] ADD  DEFAULT ((0)) FOR [Sasia]
GO
    ALTER TABLE [Porositë]  WITH CHECK ADD FOREIGN KEY([ID_Dega])
    REFERENCES [Dega] ([ID_Dega])
GO
    ALTER TABLE [Porositë]  WITH CHECK ADD FOREIGN KEY([ID_Klienti])
    REFERENCES [Klientët] ([ID_Klienti])
GO
	ALTER TABLE [Porositë]  WITH CHECK ADD FOREIGN KEY([ID_Punëtori])
	REFERENCES [Punëtorët] ([ID_Punëtori])
GO
	ALTER TABLE [Produktet]  WITH CHECK ADD FOREIGN KEY([ID_Prodhuesi])
	REFERENCES [Prodhuesit] ([ID_Prodhuesi])
GO	
	ALTER TABLE [Produktet_e_porositura]  WITH CHECK ADD FOREIGN KEY([ID_Porosia])
	REFERENCES [Porositë] ([ID_Porosia])
GO	
	ALTER TABLE [Produktet_e_porositura]  WITH CHECK ADD FOREIGN KEY([ID_Produkti])
	REFERENCES [Produktet] ([ID_Produkti])
GO
	ALTER TABLE [Produktet_ne_dege]  WITH CHECK ADD FOREIGN KEY([ID_Dega])
	REFERENCES [Dega] ([ID_Dega])
GO
	ALTER TABLE [Produktet_ne_dege]  WITH CHECK ADD FOREIGN KEY([ID_Produkti])
	REFERENCES [Produktet] ([ID_Produkti])
GO
	ALTER TABLE [Punëtorët]  WITH CHECK ADD FOREIGN KEY([ID_Dega])
	REFERENCES [Dega] ([ID_Dega])
GO
	ALTER TABLE [Produktet]  WITH CHECK ADD  CONSTRAINT [chk_prod] 
	CHECK  (([Njësia_matëse]='Kubik' OR [Njësia_matëse]='Thes' OR [Njësia_matëse]='Metër' OR [Njësia_matëse]='Copë' OR [Njësia_matëse]='Litër' OR [Njësia_matëse]='Kilogram'))
GO
	ALTER TABLE [Produktet] CHECK CONSTRAINT [chk_prod]
GO
	ALTER TABLE [Produktet]  WITH CHECK ADD CHECK  (([Çmimi]>(0)))
GO
	ALTER TABLE [Produktet_e_porositura]  WITH CHECK ADD CHECK  (([Sasia_e_porositur]>(0)))
GO
	ALTER TABLE [Punëtorët]  WITH CHECK ADD  CONSTRAINT [chk_Pun] CHECK  (([Paga]>(200)))
GO
	ALTER TABLE [Punëtorët] CHECK CONSTRAINT [chk_Pun]
GO
    ALTER TABLE [Punëtorët]
    ADD [Mosha] int
GO  
	UPDATE [Klientët]
    SET [Adresa] = 'Rr. Tirana '
    WHERE [Emri] = 'Faton' AND [Mbiemri] = 'Hoxha'
GO  
    DELETE FROM [Porositë]
    WHERE YEAR([Data]) < 2016
GO





