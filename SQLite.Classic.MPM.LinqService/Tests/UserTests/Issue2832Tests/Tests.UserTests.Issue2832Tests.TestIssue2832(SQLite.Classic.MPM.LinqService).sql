(428089) SELECT 
	t428089.Id = t428088.Id
FROM [DctSetpointtype(428088)] as t428088 (spt)
		LEFT JOIN (
			[VWellTree(428091)] as t428091 (t2)
				INNER JOIN [DctOu(428093)] as t428093 (tp2) ON ({t428091.ShopId?}? = {t428093.Id})
				LEFT JOIN [UacUsersDatagroup(428096)] as t428096 (cudg) ON ({t428093.Id} = {t428096.DatagroupId} AND {t428096.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428101)] as t428101 (oudg) ON ({t428093.ParentId?}? = {t428101.DatagroupId} AND {t428101.UserId} = 150 AND {t428101.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428121)] as t428121 (d) ON ({t428091.WellId?}? = {t428121.WellId})
		)  ON ({t428121.SetpointtypeId} = {t428088.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428096.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428101.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
