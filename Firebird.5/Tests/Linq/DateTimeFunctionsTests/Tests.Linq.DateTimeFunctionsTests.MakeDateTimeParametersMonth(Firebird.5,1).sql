﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p VarChar(2) -- String
SET     @p = '01'

SELECT
	Cast((Lpad((2010 + "t".ID),4,'0') || '-' || Cast(@p as VarChar(255) CHARACTER SET UNICODE_FSS) || '-01') as Date)
FROM
	"LinqDataTypes" "t"

