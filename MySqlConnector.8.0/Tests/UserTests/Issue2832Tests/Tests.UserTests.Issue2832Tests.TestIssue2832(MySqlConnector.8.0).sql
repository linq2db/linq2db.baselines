(205852) SELECT 
	t205852.Id = t205851.Id
FROM [DctSetpointtype(205851)] as t205851 (spt)
		LEFT JOIN (
			[VWellTree(205854)] as t205854 (t2)
				INNER JOIN [DctOu(205856)] as t205856 (tp2) ON ({t205854.ShopId?}? = {t205856.Id})
				LEFT JOIN [UacUsersDatagroup(205859)] as t205859 (cudg) ON ({t205856.Id} = {t205859.DatagroupId} AND {t205859.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205864)] as t205864 (oudg) ON ({t205856.ParentId?}? = {t205864.DatagroupId} AND {t205864.UserId} = 150 AND {t205864.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205884)] as t205884 (d) ON ({t205854.WellId?}? = {t205884.WellId})
		)  ON ({t205884.SetpointtypeId} = {t205851.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205859.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205864.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
