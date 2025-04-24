BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	f."ParentID",
	Lower(SUBSTR(RAWTOHEX(f."Value1"), 7, 2) || SUBSTR(RAWTOHEX(f."Value1"), 5, 2) || SUBSTR(RAWTOHEX(f."Value1"), 3, 2) || SUBSTR(RAWTOHEX(f."Value1"), 1, 2) || '-' || SUBSTR(RAWTOHEX(f."Value1"), 11, 2) || SUBSTR(RAWTOHEX(f."Value1"), 9, 2) || '-' || SUBSTR(RAWTOHEX(f."Value1"), 15, 2) || SUBSTR(RAWTOHEX(f."Value1"), 13, 2) || '-' || SUBSTR(RAWTOHEX(f."Value1"), 17, 4) || '-' || SUBSTR(RAWTOHEX(f."Value1"), 21, 12))
FROM
	"Parent" f

