BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Guid
SET     @p = X'D2F970C035AC49879CD55BADB1757436'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @p

