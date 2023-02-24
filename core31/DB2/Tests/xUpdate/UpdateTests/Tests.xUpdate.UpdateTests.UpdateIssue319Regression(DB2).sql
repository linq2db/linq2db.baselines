﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 100500
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 100500

SELECT
	"_"."ParentID"
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" = @id
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 100500
DECLARE @id Integer(4) -- Int32
SET     @id = 100500

UPDATE
	"Parent"
SET
	"Parent"."Value1" = @ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"_2"."ParentID"
				FROM
					(
						SELECT
							"_1"."ParentID",
							(
								SELECT
									Count(*)
								FROM
									"Parent" "_"
								WHERE
									"_"."ParentID" = @id
							) as "ex"
						FROM
							"Parent" "_1"
					) "_2"
				WHERE
					"_2"."ParentID" = @id AND "_2"."ex" > 0
			) "t1"
		WHERE
			"Parent"."ParentID" = "t1"."ParentID"
	)

