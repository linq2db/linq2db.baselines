-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Text VarChar(10) -- String
SET     @Text = 'aa11aa22aa'

INSERT INTO InfeedAdvicePositionDTO
(
	Id,
	Text
)
VALUES
(
	@Id,
	@Text
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Text
FROM
	InfeedAdvicePositionDTO t1

