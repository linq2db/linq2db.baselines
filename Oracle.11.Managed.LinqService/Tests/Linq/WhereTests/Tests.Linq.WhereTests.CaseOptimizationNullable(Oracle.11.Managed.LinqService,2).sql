﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @filterValue Int32
SET     @filterValue = 2

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."Id" = :filterValue

