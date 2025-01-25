BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT FIRST
WHEN 1 = 1 THEN
	INTO "Dest2"
	(
		ID,
		"Int"
	)
	VALUES
	(
		"source_A",
		"source_B"
	)
SELECT
	s.ID as "source_A",
	t1.ID as "source_B"
FROM
	"TestSource" s
		CROSS JOIN (
			SELECT
				x.ID
			FROM
				"Dest2" x
			WHERE
				x.ID > 5 AND ROWNUM <= 1
		) t1

