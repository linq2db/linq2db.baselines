﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData.ODBC.mdb].[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	?,
	?
)

