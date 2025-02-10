BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '{193ae7f4-5309-4eee-a746-27b28c7e30f3}'

INSERT INTO [InfeedAdvicePositionDTO]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	LCase(Mid(CStr([infeed].[Id]), 2, 36))
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '%7f4[-]53%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '193ae%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '%8f4[-]53%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(LCase(Mid(CStr([infeed].[Id]), 2, 36))) LIKE '293ae%'

