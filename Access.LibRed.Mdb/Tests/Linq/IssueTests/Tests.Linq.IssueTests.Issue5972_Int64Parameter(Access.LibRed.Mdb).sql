-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @min  -- Int64
SET     @min = -9223372036854775808

SELECT
	CVar(@min)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @max  -- Int64
SET     @max = 9223372036854775807

SELECT
	CVar(@max)

