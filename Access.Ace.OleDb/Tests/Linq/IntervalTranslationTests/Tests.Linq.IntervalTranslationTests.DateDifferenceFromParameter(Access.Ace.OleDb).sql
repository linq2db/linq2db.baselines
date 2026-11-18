-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-05#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Date -- DateTime
SET     @StartedOn = #2026-01-03#
DECLARE @FinishedOn Date -- DateTime
SET     @FinishedOn = #2026-01-03 20:00:00#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-03 13:30:00#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-03 13:30:00#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-03 13:30:00#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-03 13:30:00#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-03 13:30:00#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff('h', [r].[StartedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], @asOf_1), [r].[StartedOn]), @asOf_2)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], @asOf_3), [r].[StartedOn]), @asOf_4), DateAdd('h', DateDiff('h', [r].[StartedOn], @asOf_5), [r].[StartedOn])), @asOf_6)) / 3600 > 24

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-03 13:30:00#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-03 13:30:00#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-03 13:30:00#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-03 13:30:00#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-03 13:30:00#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff('h', @asOf, [r].[FinishedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', @asOf_1, [r].[FinishedOn]), @asOf_2), [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', @asOf_3, [r].[FinishedOn]), @asOf_4), [r].[FinishedOn]), DateAdd('h', DateDiff('h', @asOf_5, [r].[FinishedOn]), @asOf_6)), [r].[FinishedOn])) / 3600 > 24

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-03 13:30:00#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-03 13:30:00#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-03 13:30:00#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-03 13:30:00#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-03 13:30:00#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	DateDiff('n', [r].[StartedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[StartedOn], @asOf_1), [r].[StartedOn]), @asOf_2)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[StartedOn], @asOf_3), [r].[StartedOn]), @asOf_4), DateAdd('n', DateDiff('n', [r].[StartedOn], @asOf_5), [r].[StartedOn])), @asOf_6)) / 60

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-03 13:30:00#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-03 13:30:00#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-03 13:30:00#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-03 13:30:00#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-03 13:30:00#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-03 13:30:00#
DECLARE @asOf_7 Date -- DateTime
SET     @asOf_7 = #2026-01-03 13:30:00#
DECLARE @asOf_8 Date -- DateTime
SET     @asOf_8 = #2026-01-03 13:30:00#
DECLARE @asOf_9 Date -- DateTime
SET     @asOf_9 = #2026-01-03 13:30:00#
DECLARE @asOf_10 Date -- DateTime
SET     @asOf_10 = #2026-01-03 13:30:00#
DECLARE @asOf_11 Date -- DateTime
SET     @asOf_11 = #2026-01-03 13:30:00#
DECLARE @asOf_12 Date -- DateTime
SET     @asOf_12 = #2026-01-03 13:30:00#
DECLARE @asOf_13 Date -- DateTime
SET     @asOf_13 = #2026-01-03 13:30:00#
DECLARE @asOf_14 Date -- DateTime
SET     @asOf_14 = #2026-01-03 13:30:00#
DECLARE @asOf_15 Date -- DateTime
SET     @asOf_15 = #2026-01-03 13:30:00#
DECLARE @asOf_16 Date -- DateTime
SET     @asOf_16 = #2026-01-03 13:30:00#
DECLARE @asOf_17 Date -- DateTime
SET     @asOf_17 = #2026-01-03 13:30:00#
DECLARE @asOf_18 Date -- DateTime
SET     @asOf_18 = #2026-01-03 13:30:00#
DECLARE @asOf_19 Date -- DateTime
SET     @asOf_19 = #2026-01-03 13:30:00#
DECLARE @asOf_20 Date -- DateTime
SET     @asOf_20 = #2026-01-03 13:30:00#
DECLARE @asOf_21 Date -- DateTime
SET     @asOf_21 = #2026-01-03 13:30:00#
DECLARE @asOf_22 Date -- DateTime
SET     @asOf_22 = #2026-01-03 13:30:00#
DECLARE @asOf_23 Date -- DateTime
SET     @asOf_23 = #2026-01-03 13:30:00#
DECLARE @asOf_24 Date -- DateTime
SET     @asOf_24 = #2026-01-03 13:30:00#
DECLARE @asOf_25 Date -- DateTime
SET     @asOf_25 = #2026-01-03 13:30:00#
DECLARE @asOf_26 Date -- DateTime
SET     @asOf_26 = #2026-01-03 13:30:00#
DECLARE @asOf_27 Date -- DateTime
SET     @asOf_27 = #2026-01-03 13:30:00#
DECLARE @asOf_28 Date -- DateTime
SET     @asOf_28 = #2026-01-03 13:30:00#
DECLARE @asOf_29 Date -- DateTime
SET     @asOf_29 = #2026-01-03 13:30:00#
DECLARE @asOf_30 Date -- DateTime
SET     @asOf_30 = #2026-01-03 13:30:00#
DECLARE @asOf_31 Date -- DateTime
SET     @asOf_31 = #2026-01-03 13:30:00#
DECLARE @asOf_32 Date -- DateTime
SET     @asOf_32 = #2026-01-03 13:30:00#
DECLARE @asOf_33 Date -- DateTime
SET     @asOf_33 = #2026-01-03 13:30:00#
DECLARE @asOf_34 Date -- DateTime
SET     @asOf_34 = #2026-01-03 13:30:00#
DECLARE @asOf_35 Date -- DateTime
SET     @asOf_35 = #2026-01-03 13:30:00#
DECLARE @asOf_36 Date -- DateTime
SET     @asOf_36 = #2026-01-03 13:30:00#
DECLARE @asOf_37 Date -- DateTime
SET     @asOf_37 = #2026-01-03 13:30:00#
DECLARE @asOf_38 Date -- DateTime
SET     @asOf_38 = #2026-01-03 13:30:00#
DECLARE @asOf_39 Date -- DateTime
SET     @asOf_39 = #2026-01-03 13:30:00#
DECLARE @asOf_40 Date -- DateTime
SET     @asOf_40 = #2026-01-03 13:30:00#
DECLARE @asOf_41 Date -- DateTime
SET     @asOf_41 = #2026-01-03 13:30:00#
DECLARE @asOf_42 Date -- DateTime
SET     @asOf_42 = #2026-01-03 13:30:00#
DECLARE @asOf_43 Date -- DateTime
SET     @asOf_43 = #2026-01-03 13:30:00#
DECLARE @asOf_44 Date -- DateTime
SET     @asOf_44 = #2026-01-03 13:30:00#
DECLARE @asOf_45 Date -- DateTime
SET     @asOf_45 = #2026-01-03 13:30:00#
DECLARE @asOf_46 Date -- DateTime
SET     @asOf_46 = #2026-01-03 13:30:00#
DECLARE @asOf_47 Date -- DateTime
SET     @asOf_47 = #2026-01-03 13:30:00#
DECLARE @asOf_48 Date -- DateTime
SET     @asOf_48 = #2026-01-03 13:30:00#
DECLARE @asOf_49 Date -- DateTime
SET     @asOf_49 = #2026-01-03 13:30:00#
DECLARE @asOf_50 Date -- DateTime
SET     @asOf_50 = #2026-01-03 13:30:00#
DECLARE @asOf_51 Date -- DateTime
SET     @asOf_51 = #2026-01-03 13:30:00#
DECLARE @asOf_52 Date -- DateTime
SET     @asOf_52 = #2026-01-03 13:30:00#
DECLARE @asOf_53 Date -- DateTime
SET     @asOf_53 = #2026-01-03 13:30:00#
DECLARE @asOf_54 Date -- DateTime
SET     @asOf_54 = #2026-01-03 13:30:00#
DECLARE @asOf_55 Date -- DateTime
SET     @asOf_55 = #2026-01-03 13:30:00#
DECLARE @asOf_56 Date -- DateTime
SET     @asOf_56 = #2026-01-03 13:30:00#
DECLARE @asOf_57 Date -- DateTime
SET     @asOf_57 = #2026-01-03 13:30:00#
DECLARE @asOf_58 Date -- DateTime
SET     @asOf_58 = #2026-01-03 13:30:00#
DECLARE @asOf_59 Date -- DateTime
SET     @asOf_59 = #2026-01-03 13:30:00#
DECLARE @asOf_60 Date -- DateTime
SET     @asOf_60 = #2026-01-03 13:30:00#
DECLARE @asOf_61 Date -- DateTime
SET     @asOf_61 = #2026-01-03 13:30:00#
DECLARE @asOf_62 Date -- DateTime
SET     @asOf_62 = #2026-01-03 13:30:00#
DECLARE @asOf_63 Date -- DateTime
SET     @asOf_63 = #2026-01-03 13:30:00#
DECLARE @asOf_64 Date -- DateTime
SET     @asOf_64 = #2026-01-03 13:30:00#
DECLARE @asOf_65 Date -- DateTime
SET     @asOf_65 = #2026-01-03 13:30:00#
DECLARE @asOf_66 Date -- DateTime
SET     @asOf_66 = #2026-01-03 13:30:00#
DECLARE @asOf_67 Date -- DateTime
SET     @asOf_67 = #2026-01-03 13:30:00#
DECLARE @asOf_68 Date -- DateTime
SET     @asOf_68 = #2026-01-03 13:30:00#
DECLARE @asOf_69 Date -- DateTime
SET     @asOf_69 = #2026-01-03 13:30:00#
DECLARE @asOf_70 Date -- DateTime
SET     @asOf_70 = #2026-01-03 13:30:00#
DECLARE @asOf_71 Date -- DateTime
SET     @asOf_71 = #2026-01-03 13:30:00#
DECLARE @asOf_72 Date -- DateTime
SET     @asOf_72 = #2026-01-03 13:30:00#
DECLARE @asOf_73 Date -- DateTime
SET     @asOf_73 = #2026-01-03 13:30:00#
DECLARE @asOf_74 Date -- DateTime
SET     @asOf_74 = #2026-01-03 13:30:00#
DECLARE @asOf_75 Date -- DateTime
SET     @asOf_75 = #2026-01-03 13:30:00#
DECLARE @asOf_76 Date -- DateTime
SET     @asOf_76 = #2026-01-03 13:30:00#
DECLARE @asOf_77 Date -- DateTime
SET     @asOf_77 = #2026-01-03 13:30:00#
DECLARE @asOf_78 Date -- DateTime
SET     @asOf_78 = #2026-01-03 13:30:00#
DECLARE @asOf_79 Date -- DateTime
SET     @asOf_79 = #2026-01-03 13:30:00#
DECLARE @asOf_80 Date -- DateTime
SET     @asOf_80 = #2026-01-03 13:30:00#
DECLARE @asOf_81 Date -- DateTime
SET     @asOf_81 = #2026-01-03 13:30:00#
DECLARE @asOf_82 Date -- DateTime
SET     @asOf_82 = #2026-01-03 13:30:00#
DECLARE @asOf_83 Date -- DateTime
SET     @asOf_83 = #2026-01-03 13:30:00#
DECLARE @asOf_84 Date -- DateTime
SET     @asOf_84 = #2026-01-03 13:30:00#
DECLARE @asOf_85 Date -- DateTime
SET     @asOf_85 = #2026-01-03 13:30:00#
DECLARE @asOf_86 Date -- DateTime
SET     @asOf_86 = #2026-01-03 13:30:00#
DECLARE @asOf_87 Date -- DateTime
SET     @asOf_87 = #2026-01-03 13:30:00#
DECLARE @asOf_88 Date -- DateTime
SET     @asOf_88 = #2026-01-03 13:30:00#
DECLARE @asOf_89 Date -- DateTime
SET     @asOf_89 = #2026-01-03 13:30:00#
DECLARE @asOf_90 Date -- DateTime
SET     @asOf_90 = #2026-01-03 13:30:00#
DECLARE @asOf_91 Date -- DateTime
SET     @asOf_91 = #2026-01-03 13:30:00#
DECLARE @asOf_92 Date -- DateTime
SET     @asOf_92 = #2026-01-03 13:30:00#
DECLARE @asOf_93 Date -- DateTime
SET     @asOf_93 = #2026-01-03 13:30:00#
DECLARE @asOf_94 Date -- DateTime
SET     @asOf_94 = #2026-01-03 13:30:00#
DECLARE @asOf_95 Date -- DateTime
SET     @asOf_95 = #2026-01-03 13:30:00#
DECLARE @asOf_96 Date -- DateTime
SET     @asOf_96 = #2026-01-03 13:30:00#

SELECT TOP 2
	DateDiff('d', [r].[StartedOn], CVar(@asOf)) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_1)), [r].[StartedOn]), CVar(@asOf_2))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_3)), [r].[StartedOn]), CVar(@asOf_4)), DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_5)), [r].[StartedOn])), CVar(@asOf_6))) / 86400,
	IIF(CVar(@asOf_7) >= DateAdd('d', IIF(CVar(@asOf_8) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_9)), [r].[StartedOn]) > CVar(@asOf_10), DateDiff('d', [r].[StartedOn], CVar(@asOf_11)) - 1, IIF(CVar(@asOf_12) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_13)), [r].[StartedOn]) < CVar(@asOf_14), DateDiff('d', [r].[StartedOn], CVar(@asOf_15)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_16)))), [r].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(CVar(@asOf_17) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_18)), [r].[StartedOn]) > CVar(@asOf_19), DateDiff('d', [r].[StartedOn], CVar(@asOf_20)) - 1, IIF(CVar(@asOf_21) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_22)), [r].[StartedOn]) < CVar(@asOf_23), DateDiff('d', [r].[StartedOn], CVar(@asOf_24)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_25)))), [r].[StartedOn]), CVar(@asOf_26)), DateAdd('d', IIF(CVar(@asOf_27) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_28)), [r].[StartedOn]) > CVar(@asOf_29), DateDiff('d', [r].[StartedOn], CVar(@asOf_30)) - 1, IIF(CVar(@asOf_31) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_32)), [r].[StartedOn]) < CVar(@asOf_33), DateDiff('d', [r].[StartedOn], CVar(@asOf_34)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_35)))), [r].[StartedOn])) > CVar(@asOf_36), DateDiff('h', DateAdd('d', IIF(CVar(@asOf_37) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_38)), [r].[StartedOn]) > CVar(@asOf_39), DateDiff('d', [r].[StartedOn], CVar(@asOf_40)) - 1, IIF(CVar(@asOf_41) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_42)), [r].[StartedOn]) < CVar(@asOf_43), DateDiff('d', [r].[StartedOn], CVar(@asOf_44)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_45)))), [r].[StartedOn]), CVar(@asOf_46)) - 1, IIF(CVar(@asOf_47) < DateAdd('d', IIF(CVar(@asOf_48) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_49)), [r].[StartedOn]) > CVar(@asOf_50), DateDiff('d', [r].[StartedOn], CVar(@asOf_51)) - 1, IIF(CVar(@asOf_52) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_53)), [r].[StartedOn]) < CVar(@asOf_54), DateDiff('d', [r].[StartedOn], CVar(@asOf_55)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_56)))), [r].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(CVar(@asOf_57) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_58)), [r].[StartedOn]) > CVar(@asOf_59), DateDiff('d', [r].[StartedOn], CVar(@asOf_60)) - 1, IIF(CVar(@asOf_61) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_62)), [r].[StartedOn]) < CVar(@asOf_63), DateDiff('d', [r].[StartedOn], CVar(@asOf_64)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_65)))), [r].[StartedOn]), CVar(@asOf_66)), DateAdd('d', IIF(CVar(@asOf_67) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_68)), [r].[StartedOn]) > CVar(@asOf_69), DateDiff('d', [r].[StartedOn], CVar(@asOf_70)) - 1, IIF(CVar(@asOf_71) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_72)), [r].[StartedOn]) < CVar(@asOf_73), DateDiff('d', [r].[StartedOn], CVar(@asOf_74)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_75)))), [r].[StartedOn])) < CVar(@asOf_76), DateDiff('h', DateAdd('d', IIF(CVar(@asOf_77) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_78)), [r].[StartedOn]) > CVar(@asOf_79), DateDiff('d', [r].[StartedOn], CVar(@asOf_80)) - 1, IIF(CVar(@asOf_81) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_82)), [r].[StartedOn]) < CVar(@asOf_83), DateDiff('d', [r].[StartedOn], CVar(@asOf_84)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_85)))), [r].[StartedOn]), CVar(@asOf_86)) + 1, DateDiff('h', DateAdd('d', IIF(CVar(@asOf_87) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_88)), [r].[StartedOn]) > CVar(@asOf_89), DateDiff('d', [r].[StartedOn], CVar(@asOf_90)) - 1, IIF(CVar(@asOf_91) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf_92)), [r].[StartedOn]) < CVar(@asOf_93), DateDiff('d', [r].[StartedOn], CVar(@asOf_94)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf_95)))), [r].[StartedOn]), CVar(@asOf_96)))) MOD 24
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

