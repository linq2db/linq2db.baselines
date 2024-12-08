(426230) SELECT 
	t426230.Id = t426229.Id
FROM [DctSetpointtype(426229)] as t426229 (spt)
		LEFT JOIN (
			[VWellTree(426232)] as t426232 (t2)
				INNER JOIN [DctOu(426234)] as t426234 (tp2) ON ({t426232.ShopId?}? = {t426234.Id})
				LEFT JOIN [UacUsersDatagroup(426237)] as t426237 (cudg) ON ({t426234.Id} = {t426237.DatagroupId} AND {t426237.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426242)] as t426242 (oudg) ON ({t426234.ParentId?}? = {t426242.DatagroupId} AND {t426242.UserId} = 150 AND {t426242.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426262)] as t426262 (d) ON ({t426232.WellId?}? = {t426262.WellId})
		)  ON ({t426262.SetpointtypeId} = {t426229.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426237.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426242.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
