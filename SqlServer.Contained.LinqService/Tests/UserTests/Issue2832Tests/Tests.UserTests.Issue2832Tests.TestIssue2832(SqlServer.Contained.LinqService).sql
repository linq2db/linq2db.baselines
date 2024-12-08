(492243) SELECT 
	t492243.Id = t492242.Id
FROM [DctSetpointtype(492242)] as t492242 (spt)
		LEFT JOIN (
			[VWellTree(492245)] as t492245 (t2)
				INNER JOIN [DctOu(492247)] as t492247 (tp2) ON ({t492245.ShopId?}? = {t492247.Id})
				LEFT JOIN [UacUsersDatagroup(492250)] as t492250 (cudg) ON ({t492247.Id} = {t492250.DatagroupId} AND {t492250.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492255)] as t492255 (oudg) ON ({t492247.ParentId?}? = {t492255.DatagroupId} AND {t492255.UserId} = 150 AND {t492255.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492275)] as t492275 (d) ON ({t492245.WellId?}? = {t492275.WellId})
		)  ON ({t492275.SetpointtypeId} = {t492242.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492250.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t492255.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
