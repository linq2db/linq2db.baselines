(205809) SELECT 
	t205809.Id = t205808.Id
FROM [DctSetpointtype(205808)] as t205808 (spt)
		LEFT JOIN (
			[VWellTree(205811)] as t205811 (t2)
				INNER JOIN [DctOu(205813)] as t205813 (tp2) ON ({t205811.ShopId?}? = {t205813.Id})
				LEFT JOIN [UacUsersDatagroup(205816)] as t205816 (cudg) ON ({t205813.Id} = {t205816.DatagroupId} AND {t205816.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205821)] as t205821 (oudg) ON ({t205813.ParentId?}? = {t205821.DatagroupId} AND {t205821.UserId} = 150 AND {t205821.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205841)] as t205841 (d) ON ({t205811.WellId?}? = {t205841.WellId})
		)  ON ({t205841.SetpointtypeId} = {t205808.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205816.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205821.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
