-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Text VarChar(4) -- String
SET     @Text = 'abcd'

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Text VarChar(6) -- String
SET     @Text = 'aabbcc'

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
	infeed.Id,
	infeed.Text
FROM
	InfeedAdvicePositionDTO infeed
WHERE
	regex_match(infeed.Text, 'aa.*')

