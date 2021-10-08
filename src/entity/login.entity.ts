import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("M_ADMIN")
export class LoginEntity {
    @PrimaryGeneratedColumn()
    ID: string;

    @Column()
    EMAIL: string;

    @Column()
    PASSWORD: string;
}