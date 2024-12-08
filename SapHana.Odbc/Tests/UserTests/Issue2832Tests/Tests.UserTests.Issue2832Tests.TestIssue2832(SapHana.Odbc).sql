(99805) SELECT 
	t99805.Id = t99804.Id
FROM [DctSetpointtype(99804)] as t99804 (spt)
		LEFT JOIN (
			[VWellTree(99807)] as t99807 (t2)
				INNER JOIN [DctOu(99809)] as t99809 (tp2) ON ({t99807.ShopId?}? = {t99809.Id})
				LEFT JOIN [UacUsersDatagroup(99812)] as t99812 (cudg) ON ({t99809.Id} = {t99812.DatagroupId} AND {t99812.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99817)] as t99817 (oudg) ON ({t99809.ParentId?}? = {t99817.DatagroupId} AND {t99817.UserId} = 150 AND {t99817.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99837)] as t99837 (d) ON ({t99807.WellId?}? = {t99837.WellId})
		)  ON ({t99837.SetpointtypeId} = {t99804.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99812.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99817.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
