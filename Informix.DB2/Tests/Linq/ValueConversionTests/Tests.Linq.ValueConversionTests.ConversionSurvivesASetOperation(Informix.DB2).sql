-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Span BigInt(8) -- Int64
SET     @Span = 5400

INSERT INTO ScaledRow
(
	Id,
	Span
)
VALUES
(
	@Id,
	@Span
)

-- Informix.DB2 Informix
SELECT
	t1.Source,
	t1.Span
FROM
	(
		SELECT
			1::Int as Source,
			r.Span
		FROM
			ScaledRow r
		UNION ALL
		SELECT
			2::Int as Source,
			r_1.Span
		FROM
			ScaledRow r_1
	) t1
ORDER BY
	t1.Source

