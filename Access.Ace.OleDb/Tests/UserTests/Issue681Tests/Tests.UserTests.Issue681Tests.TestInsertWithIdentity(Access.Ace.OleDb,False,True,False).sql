﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

