BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = :"ParentID"
	) THEN 1 ELSE 0 END
FROM DUMMY

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = :"ParentID"
	) THEN 1 ELSE 0 END
FROM DUMMY

