DO $$
DECLARE
    i INTEGER := 1;
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO "transactions" ("id", "name", "value", "date", "type", "user_id", "bank_account_id", "category_id")
        VALUES (
            uuid_generate_v4()::TEXT, -- Supondo que você tenha a extensão uuid-ossp para gerar UUIDs
            'Transaction ' || i,
            RANDOM() * 1000,
            CURRENT_TIMESTAMP,
            'EXPENSE', -- ou 'INCOME', dependendo do tipo de transação que você deseja inserir
            'user_id_aqui', -- Substitua pelo ID do usuário desejado
            'bank_account_id_aqui', -- Substitua pelo ID da conta bancária desejada
            'category_id_aqui' -- Substitua pelo ID da categoria desejada
        );
    END LOOP;
END $$;