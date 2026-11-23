-- Firebird.3 Firebird3
SELECT
	CASE
		WHEN "r".A + "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A + "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B + "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || ("r".A + "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A + "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A - "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B - "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || ("r".A - "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A - "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A * "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B * "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || ("r".A * "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A * "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A / "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B / "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || ("r".A / "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A / "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < Mod("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN Mod("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || Mod("r".A, "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM Mod("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_And("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < Bin_And("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_And("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN Bin_And("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_And("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || Bin_And("r".A, "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_And("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_And("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM Bin_And("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Or("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < Bin_Or("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Or("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN Bin_Or("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Or("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || Bin_Or("r".A, "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Or("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Or("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM Bin_Or("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Xor("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < Bin_Xor("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Xor("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN Bin_Xor("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Xor("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || Bin_Xor("r".A, "r".B) STARTING WITH 'x5'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Xor("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Bin_Xor("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM Bin_Xor("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".A = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = -"r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BIN_NOT("r".A) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = BIN_NOT("r".A) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	CASE
		WHEN -5 = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

