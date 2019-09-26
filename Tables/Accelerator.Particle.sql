SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Accelerator].[Particle] (
		[Id]          [int] IDENTITY(1, 1) NOT NULL,
		[X]           [decimal](10, 2) NOT NULL,
		[Y]           [decimal](10, 2) NOT NULL,
		[Value]       [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
		[ColorId]     [int] NOT NULL,
		CONSTRAINT [PK_Point_Id]
		PRIMARY KEY
		CLUSTERED
		([Id])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Accelerator].[Particle]
	WITH CHECK
	ADD CONSTRAINT [FK_ParticleColor]
	FOREIGN KEY ([ColorId]) REFERENCES [Accelerator].[Color] ([Id])
ALTER TABLE [Accelerator].[Particle]
	CHECK CONSTRAINT [FK_ParticleColor]

GO
ALTER TABLE [Accelerator].[Particle] SET (LOCK_ESCALATION = TABLE)
GO
