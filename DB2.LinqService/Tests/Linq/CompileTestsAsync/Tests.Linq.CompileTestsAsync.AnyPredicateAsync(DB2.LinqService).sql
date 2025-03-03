BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"AsyncDataTable" "c_1"
		WHERE
			"c_1"."Id" = @p
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

