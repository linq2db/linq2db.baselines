(140804) SELECT 
	t140804.Id = t140803.Id
FROM [DctSetpointtype(140803)] as t140803 (spt)
		LEFT JOIN (
			[VWellTree(140806)] as t140806 (t2)
				INNER JOIN [DctOu(140808)] as t140808 (tp2) ON ({t140806.ShopId?}? = {t140808.Id})
				LEFT JOIN [UacUsersDatagroup(140811)] as t140811 (cudg) ON ({t140808.Id} = {t140811.DatagroupId} AND {t140811.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140816)] as t140816 (oudg) ON ({t140808.ParentId?}? = {t140816.DatagroupId} AND {t140816.UserId} = 150 AND {t140816.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140836)] as t140836 (d) ON ({t140806.WellId?}? = {t140836.WellId})
		)  ON ({t140836.SetpointtypeId} = {t140803.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140811.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140816.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
