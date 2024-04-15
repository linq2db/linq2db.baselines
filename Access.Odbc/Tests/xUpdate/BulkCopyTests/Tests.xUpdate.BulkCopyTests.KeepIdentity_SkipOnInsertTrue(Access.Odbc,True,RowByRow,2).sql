﻿BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE AllTypes ALTER COLUMN ID COUNTER(3, 1)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [_]
WHERE
	[_].[ID] >= ?

