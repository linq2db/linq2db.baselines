(701057) SELECT 
	t701057.Id = t701056.Id
FROM [DctSetpointtype(701056)] as t701056 (spt)
		LEFT JOIN (
			[VWellTree(701059)] as t701059 (t2)
				INNER JOIN [DctOu(701061)] as t701061 (tp2) ON ({t701059.ShopId?}? = {t701061.Id})
				LEFT JOIN [UacUsersDatagroup(701064)] as t701064 (cudg) ON ({t701061.Id} = {t701064.DatagroupId} AND {t701064.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701069)] as t701069 (oudg) ON ({t701061.ParentId?}? = {t701069.DatagroupId} AND {t701069.UserId} = 150 AND {t701069.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701089)] as t701089 (d) ON ({t701059.WellId?}? = {t701089.WellId})
		)  ON ({t701089.SetpointtypeId} = {t701056.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701064.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701069.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
