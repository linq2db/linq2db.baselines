(492118) SELECT 
	t492118.Id = t492117.Id
FROM [DctSetpointtype(492117)] as t492117 (spt)
		LEFT JOIN (
			[VWellTree(492120)] as t492120 (t2)
				INNER JOIN [DctOu(492122)] as t492122 (tp2) ON ({t492120.ShopId?}? = {t492122.Id})
				LEFT JOIN [UacUsersDatagroup(492125)] as t492125 (cudg) ON ({t492122.Id} = {t492125.DatagroupId} AND {t492125.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492130)] as t492130 (oudg) ON ({t492122.ParentId?}? = {t492130.DatagroupId} AND {t492130.UserId} = 150 AND {t492130.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492150)] as t492150 (d) ON ({t492120.WellId?}? = {t492150.WellId})
		)  ON ({t492150.SetpointtypeId} = {t492117.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492125.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t492130.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
