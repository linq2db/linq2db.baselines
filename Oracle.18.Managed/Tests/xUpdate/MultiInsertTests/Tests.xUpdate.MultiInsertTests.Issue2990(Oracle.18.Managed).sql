BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT FIRST
WHEN 1 = 1 THEN
	INTO "Dest2"
	(
		ID,
		"Int"
	)
	VALUES
	(
		A,
		B
	)
SELECT
	s.ID as A,
	(
		SELECT
			x.ID
		FROM
			"Dest2" x
		WHERE
			x.ID > 5 AND ROWNUM <= 1
	) as B
FROM
	"TestSource" s

