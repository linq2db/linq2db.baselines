BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					param."ParentID",
					param."Value1" as "Value_1"
				FROM
					"Parent" param
				WHERE
					ROWNUM <= 100
			) param_1
		WHERE
			param_1."ParentID" = c_1."ParentID" AND param_1."Value_1" = c_1."ParentID"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

