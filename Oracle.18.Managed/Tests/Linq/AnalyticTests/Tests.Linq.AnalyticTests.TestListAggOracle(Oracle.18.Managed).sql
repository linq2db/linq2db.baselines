-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(c_1."ChildID") WITHIN GROUP (ORDER BY p."Value1", a_ParentTest."Value1", c_1."ParentID" DESC),
	LISTAGG(c_1."ChildID") WITHIN GROUP (ORDER BY p."Value1" NULLS LAST, c_1."ParentID" DESC NULLS FIRST),
	LISTAGG(c_1."ChildID") WITHIN GROUP (ORDER BY p."Value1" NULLS FIRST, c_1."ParentID", c_1."ParentID" NULLS FIRST),
	LISTAGG(c_1."ChildID") WITHIN GROUP (ORDER BY p."Value1" DESC, a_ParentTest."Value1", c_1."ParentID" DESC),
	LISTAGG(c_1."ChildID") WITHIN GROUP (ORDER BY p."Value1" DESC, a_ParentTest."Value1", c_1."ParentID" DESC),
	LISTAGG(c_1."ChildID", '..') WITHIN GROUP (ORDER BY p."Value1" DESC, a_ParentTest."Value1", c_1."ParentID" DESC)
FROM
	"Parent" p
		LEFT JOIN "Parent" a_ParentTest ON p."ParentID" = a_ParentTest."ParentID" AND (p."Value1" = a_ParentTest."Value1" OR p."Value1" IS NULL AND a_ParentTest."Value1" IS NULL)
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

