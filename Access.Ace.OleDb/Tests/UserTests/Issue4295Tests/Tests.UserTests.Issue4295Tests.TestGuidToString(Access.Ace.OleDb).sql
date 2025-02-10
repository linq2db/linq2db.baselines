BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Guid
SET     @Id = {guid {193ae7f4-5309-4eee-a746-27b28c7e30f3}}

INSERT INTO [InfeedAdvicePositionDTO]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	LCase(Mid(CStr([infeed].[Id]), 2, 36))
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '%7f4[-]53%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '193ae%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '%8f4[-]53%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(LCase(Mid(CStr([infeed].[Id]), 2, 36))) LIKE '293ae%'

