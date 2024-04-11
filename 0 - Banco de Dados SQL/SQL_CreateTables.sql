USE [bibliotecadb]
GO

/****** Object:  Table [dbo].[Autores]    Script Date: 11/04/2024 18:50:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Autores](
	[idAutor] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](70) NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[idAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Livros](
	[idLivro] [int] IDENTITY(1,1) NOT NULL,
	[idAutor] [int] NOT NULL,
	[titulo] [nvarchar](50) NULL,
	[anoPublicacao] [smallint] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Livros] PRIMARY KEY CLUSTERED 
(
	[idLivro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Livros] ADD  CONSTRAINT [DF_Livros_disponivel]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Livros]  WITH CHECK ADD FOREIGN KEY([idAutor])
REFERENCES [dbo].[Autores] ([idAutor])
GO

CREATE TABLE [dbo].[Usuarios](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[dataCadastro] [date] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO