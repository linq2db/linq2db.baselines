(140903) SELECT 
	t140903.Id = t140902.Id
FROM [DctSetpointtype(140902)] as t140902 (spt)
		LEFT JOIN (
			[VWellTree(140905)] as t140905 (t2)
				INNER JOIN [DctOu(140907)] as t140907 (tp2) ON ({t140905.ShopId?}? = {t140907.Id})
				LEFT JOIN [UacUsersDatagroup(140910)] as t140910 (cudg) ON ({t140907.Id} = {t140910.DatagroupId} AND {t140910.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140915)] as t140915 (oudg) ON ({t140907.ParentId?}? = {t140915.DatagroupId} AND {t140915.UserId} = 150 AND {t140915.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140935)] as t140935 (d) ON ({t140905.WellId?}? = {t140935.WellId})
		)  ON ({t140935.SetpointtypeId} = {t140902.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140910.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140915.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
