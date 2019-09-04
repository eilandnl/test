SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_test1] (
		[Klantnummer]           [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Klantnaam]             [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[KVK8]                  [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Straatnaam]            [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Huisnummer]            [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Huisnr_toevoeging]     [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Postcode]              [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Plaatsnaam]            [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Telefoon]              [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Email]                 [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Actief_JN]             [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[CI_BronBestand]        [varchar](max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[_test1] SET (LOCK_ESCALATION = TABLE)
GO
