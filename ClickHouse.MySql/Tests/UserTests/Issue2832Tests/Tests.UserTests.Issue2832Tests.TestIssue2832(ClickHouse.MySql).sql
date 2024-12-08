(168918) SELECT 
	t168918.Id = t168917.Id
FROM [DctSetpointtype(168917)] as t168917 (spt)
		LEFT JOIN (
			(168955) SELECT 
				t168955.SetpointtypeId        = t168950.SetpointtypeId,
				t168955.Permission            = t168925.Permission?,
				t168955.Inheritablepermission = t168930.Inheritablepermission?
			FROM [VWellTree(168920)] as t168920 (t2)
					INNER JOIN [DctOu(168922)] as t168922 (tp2) ON ({t168920.ShopId?}? = {t168922.Id})
					LEFT JOIN [UacUsersDatagroup(168925)] as t168925 (cudg) ON ({t168922.Id} = {t168925.DatagroupId} AND {t168925.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168930)] as t168930 (oudg) ON ({t168922.ParentId?}? = {t168930.DatagroupId} AND {t168930.UserId} = 150 AND {t168930.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168950)] as t168950 (d) ON ({t168920.WellId?}? = {t168950.WellId})
		) as t168955 (t1) ON ({t168955.SetpointtypeId?} = {t168917.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168955.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168955.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
