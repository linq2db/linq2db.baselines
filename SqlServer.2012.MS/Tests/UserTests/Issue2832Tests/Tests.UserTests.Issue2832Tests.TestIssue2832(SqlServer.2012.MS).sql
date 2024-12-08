(240521) SELECT 
	t240521.Id = t240520.Id
FROM [DctSetpointtype(240520)] as t240520 (spt)
		LEFT JOIN (
			[VWellTree(240523)] as t240523 (t2)
				INNER JOIN [DctOu(240525)] as t240525 (tp2) ON ({t240523.ShopId?}? = {t240525.Id})
				LEFT JOIN [UacUsersDatagroup(240528)] as t240528 (cudg) ON ({t240525.Id} = {t240528.DatagroupId} AND {t240528.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240533)] as t240533 (oudg) ON ({t240525.ParentId?}? = {t240533.DatagroupId} AND {t240533.UserId} = 150 AND {t240533.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240553)] as t240553 (d) ON ({t240523.WellId?}? = {t240553.WellId})
		)  ON ({t240553.SetpointtypeId} = {t240520.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240528.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240533.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
