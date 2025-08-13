BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		UNION ALL
		SELECT
			"p_1"."ParentID"
		FROM
			"Parent" "p_1"
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

