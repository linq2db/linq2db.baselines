BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @Value1 Int32
SET     @Value1 = NULL

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 100500
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ParentID
FROM
	Parent t1
WHERE
	t1.ParentID = :id
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @id Int32
SET     @id = 100500

UPDATE
	Parent
SET
	Parent.Value1 = :ParentID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t3.ParentID
				FROM
					(
						SELECT
							t2.ParentID,
							(
								SELECT
									Count(*)
								FROM
									Parent t1
								WHERE
									t1.ParentID = :id
							) as ex,
							t2.Value1
						FROM
							Parent t2
					) t3
				WHERE
					t3.ParentID = :id AND t3.ex > 0
			) t4
		WHERE
			Parent.ParentID = t4.ParentID
	)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 100500

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = :id

