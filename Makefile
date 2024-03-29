migrateup:
	migrate -path db/migration -database "postgresql://root:admin@localhost:5432/simple-bank?sslmode=disable" -verbose up
migratedown:
	migrate -path db/migration -database "postgresql://root:admin@localhost:5432/simple-bank?sslmode=disable" -verbose down
sqlc:
	sqlc generate
test:
	go test -v -cover ./...
.PHONY: migrateup migratedown sqlc test
