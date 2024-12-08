(155906) SELECT 
	t155906.Id = t155905.Id
FROM [DctSetpointtype(155905)] as t155905 (spt)
		LEFT JOIN (
			[VWellTree(155908)] as t155908 (t2)
				INNER JOIN [DctOu(155910)] as t155910 (tp2) ON ({t155908.ShopId?}? = {t155910.Id})
				LEFT JOIN [UacUsersDatagroup(155913)] as t155913 (cudg) ON ({t155910.Id} = {t155913.DatagroupId} AND {t155913.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155918)] as t155918 (oudg) ON ({t155910.ParentId?}? = {t155918.DatagroupId} AND {t155918.UserId} = 150 AND {t155918.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155938)] as t155938 (d) ON ({t155908.WellId?}? = {t155938.WellId})
		)  ON ({t155938.SetpointtypeId} = {t155905.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155913.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155918.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
