﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

