BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [FluentMapping]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [FluentMapping]
(
	[RecordID]       Int      NOT NULL,
	[EffectiveStart] DateTime NOT NULL,
	[EffectiveEnd]   DateTime     NULL,
	[Key]            Int      NOT NULL,
	[Unordered1]     Int      NOT NULL,
	[Unordered2]     Int      NOT NULL,
	[Audit1ID]       Int      NOT NULL,
	[Audit2ID]       Int      NOT NULL
)

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [FluentMapping]

