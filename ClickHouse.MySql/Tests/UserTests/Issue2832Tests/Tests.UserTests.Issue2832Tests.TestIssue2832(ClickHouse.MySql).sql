(168895) SELECT 
	t168895.Id = t168894.Id
FROM [DctSetpointtype(168894)] as t168894 (spt)
		LEFT JOIN (
			(168932) SELECT 
				t168932.SetpointtypeId        = t168927.SetpointtypeId,
				t168932.Permission            = t168902.Permission?,
				t168932.Inheritablepermission = t168907.Inheritablepermission?
			FROM [VWellTree(168897)] as t168897 (t2)
					INNER JOIN [DctOu(168899)] as t168899 (tp2) ON ({t168897.ShopId?}? = {t168899.Id})
					LEFT JOIN [UacUsersDatagroup(168902)] as t168902 (cudg) ON ({t168899.Id} = {t168902.DatagroupId} AND {t168902.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168907)] as t168907 (oudg) ON ({t168899.ParentId?}? = {t168907.DatagroupId} AND {t168907.UserId} = 150 AND {t168907.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168927)] as t168927 (d) ON ({t168897.WellId?}? = {t168927.WellId})
		) as t168932 (t1) ON ({t168932.SetpointtypeId?} = {t168894.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168932.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168932.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
