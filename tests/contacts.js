import postgres from 'postgres';

let sql;


beforeAll(() => {
    sql = postgres(
        'postgres://postgrestest:passwordtest@localhost:5433/myapp'
    );
});
afterAll(() => {
    sql.end()
});

test('Insert in contacts', async () => {
    await sql`DELETE FROM main.contacts`;
    await sql`INSERT INTO main.contacts (firstname, lastname) VALUES('John', 'Doe')`;

    expect(
        (await sql`SELECT COUNT(*)::INTEGER FROM main.contacts WHERE firstname = 'John'`)[0].count
    ).toBe(1);
});
