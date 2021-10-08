import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("M_USER")
export class UserEntity {
    @PrimaryGeneratedColumn()
    SENDER_ID: number;

    @Column()
    USERNAME: string;

    @Column()
    FIRSTNAME: string;

    @Column()
    PICTURE: string;
}