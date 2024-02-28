part of 'add_notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddNoteInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {}

class AddNoteFailure extends NotesState {
  final String errMessage;
  AddNoteFailure({required this.errMessage});
}
