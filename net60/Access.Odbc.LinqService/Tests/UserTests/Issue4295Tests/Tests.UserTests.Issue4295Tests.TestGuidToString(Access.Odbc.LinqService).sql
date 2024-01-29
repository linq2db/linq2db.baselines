BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [InfeedAdvicePositionDTO]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [InfeedAdvicePositionDTO]
(
	[Id] Guid NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT TOP 1
	Mid(CStr([infeed].[Id]), 2, 36)
FROM
	[InfeedAdvicePositionDTO] [infeed]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Mid(CStr([infeed].[Id]), 2, 36) LIKE '%7F4[-]53%'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Mid(CStr([infeed].[Id]), 2, 36) LIKE '193AE%'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	Mid(CStr([infeed].[Id]), 2, 36) LIKE '%8F4[-]53%'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[infeed].[Id]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	LCase(Mid(CStr([infeed].[Id]), 2, 36)) LIKE '293AE%'

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [InfeedAdvicePositionDTO]

