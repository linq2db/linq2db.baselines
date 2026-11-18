-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Date  -- Date
SET     @Date = #2021-01-01#

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

