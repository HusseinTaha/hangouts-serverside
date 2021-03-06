USE [Hangout]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 10/04/2019 10:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[ContactName] [nvarchar](100) NOT NULL,
	[Country] [int] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON
INSERT [dbo].[Contacts] ([ID], [ClientID], [Mobile], [ContactName], [Country]) VALUES (11, 22, N'71744566', N'Hossein Monzer', 101)
INSERT [dbo].[Contacts] ([ID], [ClientID], [Mobile], [ContactName], [Country]) VALUES (12, 23, N'71744566', N'housseinmonzer', 101)
INSERT [dbo].[Contacts] ([ID], [ClientID], [Mobile], [ContactName], [Country]) VALUES (13, 22, N'71230368', N'Comred general', 101)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
/****** Object:  Table [dbo].[Client]    Script Date: 10/04/2019 10:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Country] [int] NOT NULL,
	[Mac_Address] [nvarchar](20) NOT NULL,
	[Token] [nvarchar](40) NOT NULL,
 CONSTRAINT [Client_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON
INSERT [dbo].[Client] ([ID], [Name], [Email], [Mobile], [Country], [Mac_Address], [Token]) VALUES (22, N'monzer', N'monzer@gmail.com', N'71744566', 101, N'34:31:11:3C:52:7B', N'FA97168311934C0C90257652B1CC1ACB6DCE22F7')
INSERT [dbo].[Client] ([ID], [Name], [Email], [Mobile], [Country], [Mac_Address], [Token]) VALUES (23, N'hussein', N'hussein@hsjs.com', N'71230368', 101, N'88:32:9B:70:30:82', N'B84C383BE7BC7BDB972D185DEC418895BEB8036A')
SET IDENTITY_INSERT [dbo].[Client] OFF
/****** Object:  Table [dbo].[Countries]    Script Date: 10/04/2019 10:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Phone_ext] [int] NOT NULL,
 CONSTRAINT [Countries_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (3, N'Afghanistan', 93)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (4, N'Albania', 355)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (5, N'Algeria', 213)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (6, N'Andorra', 376)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (7, N'Angola', 244)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (8, N'Antarctica', 672)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (9, N'Argentina', 54)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (10, N'Armenia', 374)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (11, N'Aruba', 297)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (12, N'Australia', 61)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (13, N'Austria', 43)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (14, N'Azerbaijan', 994)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (15, N'Bahrain', 973)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (16, N'Bangladesh', 880)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (17, N'Belarus', 375)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (18, N'Belgium', 32)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (19, N'Belize', 501)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (20, N'Benin', 229)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (21, N'Bhutan', 975)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (22, N'Bolivia, Plurinational State Of', 591)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (23, N'Bosnia And Herzegovina', 387)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (24, N'Botswana', 267)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (25, N'Brazil', 55)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (26, N'Brunei Darussalam', 673)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (27, N'Bulgaria', 359)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (28, N'Burkina Faso', 226)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (29, N'Myanmar', 95)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (30, N'Burundi', 257)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (31, N'Cambodia', 855)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (32, N'Cameroon', 237)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (33, N'Canada', 1)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (34, N'Cape Verde', 238)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (35, N'Central African Republic', 236)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (36, N'Chad', 235)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (37, N'Chile', 56)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (38, N'China', 86)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (39, N'Christmas Island', 61)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (40, N'Cocos (keeling) Islands', 61)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (41, N'Colombia', 57)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (42, N'Comoros', 269)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (43, N'Congo', 242)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (44, N'Congo, The Democratic Republic Of The', 243)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (45, N'Cook Islands', 682)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (46, N'Costa Rica', 506)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (47, N'Croatia', 385)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (48, N'Cuba', 53)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (49, N'Cyprus', 357)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (50, N'Czech Republic', 420)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (51, N'Denmark', 45)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (52, N'Djibouti', 253)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (53, N'Timor-leste', 670)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (54, N'Ecuador', 593)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (55, N'Egypt', 20)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (56, N'El Salvador', 503)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (57, N'Equatorial Guinea', 240)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (58, N'Eritrea', 291)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (59, N'Estonia', 372)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (60, N'Ethiopia', 251)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (61, N'Falkland Islands (malvinas)', 500)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (62, N'Faroe Islands', 298)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (63, N'Fiji', 679)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (64, N'Finland', 358)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (65, N'France', 33)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (66, N'French Polynesia', 689)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (67, N'Gabon', 241)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (68, N'Gambia', 220)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (69, N'Georgia', 995)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (70, N'Germany', 49)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (71, N'Ghana', 233)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (72, N'Gibraltar', 350)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (73, N'Greece', 30)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (74, N'Greenland', 299)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (75, N'Guatemala', 502)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (76, N'Guinea', 224)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (77, N'Guinea-bissau', 245)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (78, N'Guyana', 592)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (79, N'Haiti', 509)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (80, N'Honduras', 504)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (81, N'Hong Kong', 852)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (82, N'Hungary', 36)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (83, N'India', 91)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (84, N'Indonesia', 62)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (85, N'Iran, Islamic Republic Of', 98)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (86, N'Iraq', 964)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (87, N'Ireland', 353)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (88, N'Isle Of Man', 44)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (89, N'Israel', 972)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (90, N'Italy', 39)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (91, N'Côte D''ivoire', 225)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (92, N'Japan', 81)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (93, N'Jordan', 962)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (94, N'Kazakhstan', 7)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (95, N'Kenya', 254)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (96, N'Kiribati', 686)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (97, N'Kuwait', 965)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (98, N'Kyrgyzstan', 996)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (99, N'Lao People''s Democratic Republic', 856)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (100, N'Latvia', 371)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (101, N'Lebanon', 961)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (102, N'Lesotho', 266)
GO
print 'Processed 100 total records'
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (103, N'Liberia', 231)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (104, N'Libya', 218)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (105, N'Liechtenstein', 423)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (106, N'Lithuania', 370)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (107, N'Luxembourg', 352)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (108, N'Macao', 853)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (109, N'Macedonia, The Former Yugoslav Republic Of', 389)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (110, N'Madagascar', 261)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (111, N'Malawi', 265)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (112, N'Malaysia', 60)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (113, N'Maldives', 960)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (114, N'Mali', 223)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (115, N'Malta', 356)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (116, N'Marshall Islands', 692)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (117, N'Mauritania', 222)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (118, N'Mauritius', 230)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (119, N'Mayotte', 262)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (120, N'Mexico', 52)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (121, N'Micronesia, Federated States Of', 691)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (122, N'Moldova, Republic Of', 373)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (123, N'Monaco', 377)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (124, N'Mongolia', 976)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (125, N'Montenegro', 382)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (126, N'Morocco', 212)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (127, N'Mozambique', 258)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (128, N'Namibia', 264)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (129, N'Nauru', 674)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (130, N'Nepal', 977)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (131, N'Netherlands', 31)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (132, N'New Caledonia', 687)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (133, N'New Zealand', 64)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (134, N'Nicaragua', 505)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (135, N'Niger', 227)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (136, N'Nigeria', 234)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (137, N'Niue', 683)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (138, N'Korea, Democratic People''s Republic Of', 850)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (139, N'Norway', 47)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (140, N'Oman', 968)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (141, N'Pakistan', 92)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (142, N'Palau', 680)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (143, N'Panama', 507)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (144, N'Papua New Guinea', 675)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (145, N'Paraguay', 595)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (146, N'Peru', 51)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (147, N'Philippines', 63)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (148, N'Pitcairn', 870)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (149, N'Poland', 48)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (150, N'Portugal', 351)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (151, N'Puerto Rico', 1)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (152, N'Qatar', 974)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (153, N'Romania', 40)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (154, N'Russian Federation', 7)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (155, N'Rwanda', 250)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (156, N'Saint Barthélemy', 590)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (157, N'Samoa', 685)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (158, N'San Marino', 378)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (159, N'Sao Tome And Principe', 239)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (160, N'Saudi Arabia', 966)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (161, N'Senegal', 221)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (162, N'Serbia', 381)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (163, N'Seychelles', 248)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (164, N'Sierra Leone', 232)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (165, N'Singapore', 65)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (166, N'Slovakia', 421)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (167, N'Slovenia', 386)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (168, N'Solomon Islands', 677)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (169, N'Somalia', 252)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (170, N'South Africa', 27)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (171, N'Korea, Republic Of', 82)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (172, N'Spain', 34)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (173, N'Sri Lanka', 94)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (174, N'Saint Helena, Ascension And Tristan Da Cunha', 290)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (175, N'Saint Pierre And Miquelon', 508)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (176, N'Sudan', 249)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (177, N'Suriname', 597)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (178, N'Swaziland', 268)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (179, N'Sweden', 46)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (180, N'Switzerland', 41)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (181, N'Syrian Arab Republic', 963)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (182, N'Taiwan, Province Of China', 886)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (183, N'Tajikistan', 992)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (184, N'Tanzania, United Republic Of', 255)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (185, N'Thailand', 66)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (186, N'Togo', 228)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (187, N'Tokelau', 690)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (188, N'Tonga', 676)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (189, N'Tunisia', 216)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (190, N'Turkey', 90)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (191, N'Turkmenistan', 993)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (192, N'Tuvalu', 688)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (193, N'United Arab Emirates', 971)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (194, N'Uganda', 256)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (195, N'United Kingdom', 44)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (196, N'Ukraine', 380)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (197, N'Uruguay', 598)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (198, N'United States', 1)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (199, N'Uzbekistan', 998)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (200, N'Vanuatu', 678)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (201, N'Holy See (vatican City State)', 39)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (202, N'Venezuela, Bolivarian Republic Of', 58)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (203, N'Viet Nam', 84)
GO
print 'Processed 200 total records'
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (204, N'Wallis And Futuna', 681)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (205, N'Yemen', 967)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (206, N'Zambia', 260)
INSERT [dbo].[Countries] ([ID], [Name], [Phone_ext]) VALUES (207, N'Zimbabwe', 263)
SET IDENTITY_INSERT [dbo].[Countries] OFF
/****** Object:  Table [dbo].[Schedule]    Script Date: 10/04/2019 10:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Hangout] [nvarchar](1000) NOT NULL,
 CONSTRAINT [Schedule_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON
INSERT [dbo].[Schedule] ([ID], [ClientID], [Date], [Hangout]) VALUES (10, 23, CAST(0x0000A42D00C72090 AS DateTime), N'examen ')
INSERT [dbo].[Schedule] ([ID], [ClientID], [Date], [Hangout]) VALUES (11, 22, CAST(0x0000A4C300C6DA40 AS DateTime), N'test')
SET IDENTITY_INSERT [dbo].[Schedule] OFF
/****** Object:  Table [dbo].[Wall]    Script Date: 10/04/2019 10:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wall](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Wall] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Wall] ON
INSERT [dbo].[Wall] ([ID], [ClientID], [Photo], [Date]) VALUES (14, 23, N'635578705630078356.JPG', CAST(0x0000A42C00C68004 AS DateTime))
INSERT [dbo].[Wall] ([ID], [ClientID], [Photo], [Date]) VALUES (15, 23, N'635578706788213838.JPG', CAST(0x0000A42C00C706C8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Wall] OFF
/****** Object:  StoredProcedure [dbo].[ScheduleSelectByClientOfContacts]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ScheduleSelectByClientOfContacts] (@Token nvarchar(40))
AS
BEGIN
	
	select s.*, c.Name
from Hangout.dbo.Schedule s, Client c
where s.ClientID in (select Client.ID
					from 
						(select  Contacts.Country, Contacts.Mobile
						from Hangout.dbo.Contacts inner join 
								Hangout.dbo.Client 
									on Client.ID=Contacts.ClientID
									where Token=@Token) contacts, Hangout.dbo.Client
					where contacts.Mobile=Client.Mobile 
						and contacts.Country=Client.Country) and s.ClientID=c.ID
	
END
GO
/****** Object:  StoredProcedure [dbo].[ScheduleSelect]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ScheduleSelect] (@ID int=null)
AS
BEGIN
	
	select *
	from dbo.Schedule
	where (ID=@ID or ISNULL (@ID ,0)=0)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WallDelete]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WallDelete] (@id int)
AS
BEGIN
	
	delete dbo.Wall
	where ID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[WallSelect]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WallSelect] (@ID int=null)
AS
BEGIN
	
	select *
	from dbo.Wall
	where (ID=@ID or ISNULL (@ID ,0)=0)	
	
END
GO
/****** Object:  View [dbo].[vw_ClientWall]    Script Date: 10/04/2019 10:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ClientWall]
AS
SELECT     dbo.Client.ID, dbo.Client.Name, dbo.Client.Email, dbo.Client.Mobile, dbo.Client.Country, dbo.Client.Mac_Address, dbo.Client.Token, dbo.Wall.ID AS WallID, dbo.Wall.Photo, dbo.Wall.Date
FROM         dbo.Client INNER JOIN
                      dbo.Wall ON dbo.Client.ID = dbo.Wall.ClientID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Client"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 176
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Wall"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientWall'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientWall'
GO
/****** Object:  View [dbo].[vw_ClientSchedule]    Script Date: 10/04/2019 10:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ClientSchedule]
AS
SELECT     dbo.Client.ID, dbo.Client.Name, dbo.Client.Email, dbo.Client.Mobile, dbo.Client.Country, dbo.Client.Mac_Address, dbo.Client.Token, dbo.Schedule.ID AS ScheduleID, dbo.Schedule.Date, 
                      dbo.Schedule.Hangout
FROM         dbo.Client INNER JOIN
                      dbo.Schedule ON dbo.Client.ID = dbo.Schedule.ClientID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Client"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Schedule"
            Begin Extent = 
               Top = 3
               Left = 303
               Bottom = 123
               Right = 463
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientSchedule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientSchedule'
GO
/****** Object:  View [dbo].[vw_ClientContact]    Script Date: 10/04/2019 10:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ClientContact]
AS
SELECT     dbo.Client.ID, dbo.Client.Name, dbo.Client.Email, dbo.Client.Mobile, dbo.Client.Country, dbo.Client.Mac_Address, dbo.Client.Token, dbo.Contacts.Country AS ContactCountry, 
                      dbo.Contacts.ContactName, dbo.Contacts.Mobile AS ContactMobile, dbo.Contacts.ID AS ContactID
FROM         dbo.Client INNER JOIN
                      dbo.Contacts ON dbo.Client.ID = dbo.Contacts.ClientID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Client"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Contacts"
            Begin Extent = 
               Top = 3
               Left = 261
               Bottom = 123
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientContact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientContact'
GO
/****** Object:  StoredProcedure [dbo].[CountriesSelect]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CountriesSelect] (@ID int=null)
AS
BEGIN
	
	select *
	from dbo.Countries
	where (ID=@ID or ISNULL (@ID ,0)=0)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ScheduleDelete]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ScheduleDelete] (@id int)
AS
BEGIN
	
	delete dbo.Schedule
	where ID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[CountriesDelete]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CountriesDelete] (@id int)
AS
BEGIN
	
	delete dbo.Countries
	where ID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ContactsSelect]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContactsSelect] (@ID int=null)
AS
BEGIN
	
	select *
	from dbo.Contacts
	where (ID=@ID or ISNULL (@ID ,0)=0)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AuthenticateUser] (@Token nvarchar(40),@Success bit out,@ID int out)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Client where  Token = @Token)
begin
		select @Success=1
		
		select @ID=ID from dbo.Client where Token=@Token
end	
else
begin

		select @Success=0
		select @ID=0
end
	
END
GO
/****** Object:  StoredProcedure [dbo].[AddContactsForClient]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddContactsForClient] (@ID int out,@ClientID int,@Mobile nvarchar(50),
							@ContactName nvarchar(100),
							@Country int)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Contacts 
			where Country=@Country and Mobile=@Mobile and ClientID=@ClientID)
begin
		update dbo.Contacts set
		Mobile=@Mobile, 
		Country=@Country,
		ContactName=@ContactName
		where Country=@Country and Mobile=@Mobile and ClientID=@ClientID
		
end	
else
begin

		if exists(select top 1 1 from dbo.Client where Mobile=@Mobile and Country=@Country)
		begin
			insert into dbo.Contacts (
				ClientID,Mobile,ContactName ,Country)
			values(@ClientID,@Mobile,@ContactName ,@Country) 
			select @ID=SCOPE_IDENTITY()
		end
end
		
	
END
GO
/****** Object:  StoredProcedure [dbo].[ClientLogin]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClientLogin] (@Country int,
							@Mobile nvarchar(50),
							@Token nvarchar(40),
							@Success bit out)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Client where Country = @Country and
													Mobile = @Mobile and
													Token = @Token)
begin
		select @Success=1
		select * from Client where Country = @Country and
													Mobile = @Mobile and
													Token = @Token
end	
else
begin

		select @Success=0
end
	
END
GO
/****** Object:  StoredProcedure [dbo].[ClientDelete]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClientDelete] (@id int)
AS
BEGIN
	
	delete dbo.Client
	where ID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ClientChangeToken]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ClientChangeToken] (@OldToken nvarchar(40),
											@NewToken nvarchar(40),
											@Success bit out)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Client where Token =@OldToken)
begin
		update dbo.Client set
		Token=@NewToken
		where Token=@OldToken 
		
		select @Success=1
end	
else
begin
		select @Success=0
end

	
END
GO
/****** Object:  StoredProcedure [dbo].[ClientChangeName]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ClientChangeName] (@success bit out,
							@Token nvarchar(40),@Name nvarchar(100))
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Client where Token=@Token)
begin
		update dbo.Client set
		Name=@Name 
		where Token=@Token 
		Select @success=1
		
end	
else
begin

		Select @success=0
end
	
	select * from Client where Token=@Token
END
GO
/****** Object:  StoredProcedure [dbo].[ClientSelect]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClientSelect] (@ID int=null)
AS
BEGIN
	
	select *
	from dbo.Client
	where (ID=@ID or ISNULL (@ID ,0)=0)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ContactsDelete]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContactsDelete] (@id int)
AS
BEGIN
	
	delete dbo.Contacts
	where ID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ContactsClientsSelectByClient]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ContactsClientsSelectByClient] (@Token nvarchar(40))
AS
BEGIN
	
	select c.*
from Hangout.dbo.Contacts c
, (select Client.Country, Client.Mobile
					from 
						(select  ContactCountry as Country, ContactMobile as Mobile
						from vw_ClientContact 
						where Token=@Token) contacts, Hangout.dbo.Client
					where contacts.Mobile=Client.Mobile 
						and contacts.Country=Client.Country) t
where t.Country=c.Country and t.Mobile=c.Mobile
	
END
GO
/****** Object:  StoredProcedure [dbo].[ClientSave]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClientSave] (@ID int out,@Name nvarchar(100),@Email nvarchar(150),
							@Mobile nvarchar(50),@Country int,
							@Mac_Address nvarchar(20),
							@Token nvarchar(40))
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Client where ID =@ID or ( Country=@Country and Mobile=@Mobile))
begin
		update dbo.Client set
		Name=@Name ,
		Email=@Email,
		Mobile=@Mobile, 
		Country=@Country,
		Mac_Address=@Mac_Address,
		Token=@Token
		where ID=@ID 
		
end	
else
begin

		insert into dbo.Client (
			Name,Email,Mobile ,Country,Mac_Address,Token)
		values(@Name,@Email,@Mobile ,@Country,@Mac_Address,@Token)
		select @ID =SCOPE_IDENTITY ()
end
	exec ClientSelect @ID=@ID	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ClientsSelectByClient]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ClientsSelectByClient] (@Token nvarchar(40))
AS
BEGIN
	
	select Client.ID,Client.Name
					from 
						(select  ContactCountry as Country, ContactMobile as Mobile
						from vw_ClientContact 
						where Token=@Token) contacts, Hangout.dbo.Client
					where contacts.Mobile=Client.Mobile 
						and contacts.Country=Client.Country
	
END
GO
/****** Object:  StoredProcedure [dbo].[ContactsSave]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContactsSave] (@ID int out,@ClientID int,@Mobile nvarchar(50),
							@ContactName nvarchar(100),
							@Country int)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Contacts where ID =@ID)
begin
		update dbo.Contacts set
		ClientID=@ClientID,
		Mobile=@Mobile, 
		Country=@Country,
		ContactName=@ContactName
		where ID=@ID 
		
end	
else
begin

		insert into dbo.Contacts (
			ClientID,Mobile,ContactName ,Country)
		values(@ClientID,@Mobile,@ContactName ,@Country)
		select @ID =SCOPE_IDENTITY ()
end
	exec ContactsSelect @ID=@ID	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ContactsSelectByToken]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContactsSelectByToken] (@Token nvarchar(40))
AS
BEGIN
	
	select ContactID as ID,ID as ClientID,ContactName,
		ContactCountry as Country,
		ContactMobile as Mobile
	from dbo.vw_ClientContact
	where Token=@Token	
	
END
GO
/****** Object:  StoredProcedure [dbo].[CountriesSave]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CountriesSave] (@ID int out,@Name nvarchar(100),
							@Phone_ext int)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Countries where ID =@ID)
begin
		update dbo.Countries set
		Name=@Name,
		Phone_ext=@Phone_ext
		where ID=@ID 
		
end	
else
begin

		insert into dbo.Countries (
			Name,Phone_ext)
		values(@Name,@Phone_ext)
		select @ID =SCOPE_IDENTITY ()
end
	exec CountriesSelect @ID=@ID	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WallSave]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WallSave] (@ID int out,@ClientID int,
							@Photo nvarchar(150),@Date datetime)
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Wall where ID =@ID)
begin
		update dbo.Wall set
		ClientID=@ClientID,
		[Date]=@Date,
		Photo=@Photo
		where ID=@ID 
		
end	
else
begin

		insert into dbo.Wall (
			ClientID,Photo,[Date])
		values(@ClientID,@Photo,@Date)
		select @ID =SCOPE_IDENTITY ()
end
	exec WallSelect @ID=@ID	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ScheduleSelectByClientOfHim]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[ScheduleSelectByClientOfHim] (@Token nvarchar(40))
AS
BEGIN
	
	select ScheduleID as ID,ID as ClientID,[Date], Hangout, Name
	from dbo.vw_ClientSchedule
	where Token=@Token
	
END
GO
/****** Object:  StoredProcedure [dbo].[ScheduleSaveByToken]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ScheduleSaveByToken] (@ID int out,@Token nvarchar(40),
							@Date datetime,@Hangout nvarchar(1000))
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Schedule where ID =@ID and ClientID 
						in (select ClientID from Client where Token=@Token))
begin
		update dbo.Schedule set
		[Date]=@Date,
		Hangout=@Hangout
		where ID=@ID 
		
end	
else
begin
		declare @clID int =0
		select @clID= ID
		from Client where Token=@Token

		insert into dbo.Schedule (
			ClientID,[Date],Hangout)
		values(@clID,@Date,@Hangout)
		select @ID =SCOPE_IDENTITY ()
end
	exec ScheduleSelect @ID=@ID	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ScheduleSave]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ScheduleSave] (@ID int out,@ClientID int,
							@Date datetime,@Hangout nvarchar(1000))
AS
BEGIN
	
	if exists(select top 1 1 from dbo.Schedule where ID =@ID)
begin
		update dbo.Schedule set
		ClientID=@ClientID,
		[Date]=@Date,
		Hangout=@Hangout
		where ID=@ID 
		
end	
else
begin

		insert into dbo.Schedule (
			ClientID,[Date],Hangout)
		values(@ClientID,@Date,@Hangout)
		select @ID =SCOPE_IDENTITY ()
end
	exec ScheduleSelect @ID=@ID	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WallSelectByClientOfHim]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WallSelectByClientOfHim] (@Token nvarchar(40))
AS
BEGIN
	
	select WallID as ID, ID as ClientID, Photo,[Date] ,Name
	from dbo.vw_ClientWall
	where Token=@Token
	
END
GO
/****** Object:  StoredProcedure [dbo].[WallSelectByClientOfContacts]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WallSelectByClientOfContacts] (@Token nvarchar(40))
AS
BEGIN
Declare @T Table (ID int,Name nvarchar(100))
			

	Insert @T Exec  
	 ClientsSelectByClient @Token
	 
	 Select w.*,t.Name from Wall w, @T as t where ClientID=t.ID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WallSelectAllByClient]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WallSelectAllByClient] (@Token nvarchar(40),@ID int,@index int=0)
AS
BEGIN
Declare @T Table (ID int,Name nvarchar(100))
			

	Insert @T Exec  
	 ClientsSelectByClient @Token
	 
	 
	 select  top 20 x.ID,x.ClientID,x.Name, x.Photo , x.Date from (
	 Select w.ID,w.ClientID,t.Name,w.Photo,w.Date
	  from Wall w inner join  @T as t on t.ID=w.ClientID
	  union 
	  select  w.ID,w.ClientID,c.Name,w.Photo,w.Date
	  from Wall w inner join Client c on c.ID=w.ClientID
	   where c.ID=@ID 
	   
	  
	  )x where x.ID>@index 
	  order by Date desc
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[SchedulesSelectAllByClientDate]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SchedulesSelectAllByClientDate] (@Token nvarchar(40),@ID int,@month int,@year int)
AS
BEGIN
Declare @T Table (ID int,Name nvarchar(100))
			

	Insert @T Exec  
	 ClientsSelectByClient @Token
	 
	 
	 select * from (
	 Select s.ID,s.ClientID,t.Name,s.Hangout,s.Date
	  from Schedule s inner join @T as t on s.ClientID=t.ID
	  union 
	  select  s.ID,s.ClientID,c.Name,s.Hangout,s.Date
	  from Schedule s inner join Client c on c.ID=s.ClientID where c.ID=@ID
	   
	  
	  )x where datepart(MONTH,x.Date)=@month
	  and datepart(YEAR,x.Date)=@year
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[AccountDelete]    Script Date: 10/04/2019 10:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[AccountDelete] (@success bit out,@Token nvarchar(40))
AS
BEGIN
	if exists (select top 1 1 from Client where Token=@Token)
	begin
	
		declare @ID int
		select @ID=ID from Client where Token=@Token
		
		delete dbo.Client
		where ID=@ID
		
		Declare @T Table (ID int ,
							ClientID int ,
							Mobile nvarchar(50),
							ContactName nvarchar(100),
							Country int )
			

		Insert @T Exec  
		 ContactsClientsSelectByClient @Token
		 
		delete from Contacts where ID in (select ID from @T)
		
		delete from Schedule where ClientID=@ID
		delete from Wall where ClientID=@ID
		
		select @success=1
	end
	else
		select @success=0
	
END
GO
