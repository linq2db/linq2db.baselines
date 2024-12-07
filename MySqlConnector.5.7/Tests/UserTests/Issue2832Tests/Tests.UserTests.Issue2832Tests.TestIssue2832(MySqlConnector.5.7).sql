(318386) SELECT 
	t318386.Id = t318385.Id
FROM [DctSetpointtype(318385)] as t318385 (spt)
		LEFT JOIN (
			[VWellTree(318388)] as t318388 (t2)
				INNER JOIN [DctOu(318390)] as t318390 (tp2) ON ({t318388.ShopId?}? = {t318390.Id})
				LEFT JOIN [UacUsersDatagroup(318393)] as t318393 (cudg) ON ({t318390.Id} = {t318393.DatagroupId} AND {t318393.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318398)] as t318398 (oudg) ON ({t318390.ParentId?}? = {t318398.DatagroupId} AND {t318398.UserId} = 150 AND {t318398.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318418)] as t318418 (d) ON ({t318388.WellId?}? = {t318418.WellId})
		)  ON ({t318418.SetpointtypeId} = {t318385.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318393.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318398.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
